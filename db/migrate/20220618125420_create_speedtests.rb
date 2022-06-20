class CreateSpeedtests < ActiveRecord::Migration[7.0]
  def change
    create_table :speedtests, id: :uuid do |t|
      t.float :upload
      t.float :download

      t.timestamps
    end
  end
end
