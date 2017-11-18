class RemoveAvatarPathFromContacts < ActiveRecord::Migration[5.1]
  def change
    remove_column :contacts, :avatar_path, :string
  end
end
