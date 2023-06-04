class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialization
      t.string :contact_number
      t.string :email
      t.string :address
      t.string :education
      t.integer :experience
      t.string :availability
      t.text :additional_info

      t.timestamps
    end
  end
end
