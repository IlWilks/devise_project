class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :doctor_name
      t.datetime :time
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
