class AddUserNameToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :user_name, :string
  end
end
