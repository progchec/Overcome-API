class CreatePublisheds < ActiveRecord::Migration[5.1]
  def change
    create_table :publisheds do |t|
      t.references :contact, foreign_key: true
      t.text :text
      t.string :img_path
      t.float :post_rating

      t.timestamps
    end
  end
end
