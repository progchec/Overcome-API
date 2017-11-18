class RemoveImgPathFromCompleted < ActiveRecord::Migration[5.1]
  def change
    remove_column :completeds, :img_path, :string
  end
end
