# Class for showing speedtest results.
class SpeedtestsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  # GET /speedtests or /speedtests.json
  def index
    @speedtests = Speedtest.group_by_hour(
      :created_at,
      format: "%l %P %Y-%m-%d",
      range: 1.day.ago..Time.zone.now
    )
  end

  # POST /speedtests or /speedtests.json
  def create
    @speedtest = Speedtest.new(speedtest_params)

    respond_to do |format|
      if @speedtest.save
        format.html { redirect_to speedtests_url, notice: "Speedtest was successfully created." }
        format.json { render :show, status: :created, location: @speedtest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @speedtest.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def speedtest_params
      params.require(:speedtest).permit(:upload, :download)
    end
end
