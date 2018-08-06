class AddPeriodToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :period, :integer
  end
end
