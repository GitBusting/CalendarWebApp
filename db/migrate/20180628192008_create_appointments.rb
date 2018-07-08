class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.datetime :start_time

      t.timestamps
    end
  end
end
