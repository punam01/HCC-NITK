class CreatePharmacies < ActiveRecord::Migration[7.0]
  def change
    create_table :pharmacies do |t|
      t.string :name
      t.string :location
      t.string :contact_number
      t.string :email
      t.string :working_hours
      t.text :additional_info

      t.timestamps
    end
  end
end
