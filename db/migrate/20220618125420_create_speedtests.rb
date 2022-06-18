class CreateSpeedtests < ActiveRecord::Migration[7.0]
  def change
    create_table :speedtests, id: :uuid do |t|
      t.integer :upload
      t.integer :download

      t.timestamps
    end
  end
end
