class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :surname
      t.string :login
      t.string :password
      t.string :phone
      t.string :avatar_path
      t.float :rating

      t.timestamps
    end
  end
end
