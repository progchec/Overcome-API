class RemoveImgPathFromPublisheds < ActiveRecord::Migration[5.1]
  def change
    remove_column :publisheds, :img_path, :string
  end
end
