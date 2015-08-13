class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.text :contact_message

      t.timestamps null: false
    end
  end
end
