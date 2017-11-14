class CreateCompleteds < ActiveRecord::Migration[5.1]
  def change
    create_table :completeds do |t|
      t.references :contact, foreign_key: true
      t.text :text
      t.string :img_path
      t.float :post_rating

      t.timestamps
    end
  end
end
