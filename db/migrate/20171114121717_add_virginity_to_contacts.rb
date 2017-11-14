class AddVirginityToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :virginity, :boolean
  end
end
