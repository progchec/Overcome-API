class AddAvatarToContact < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :avatar, :string
  end
end
