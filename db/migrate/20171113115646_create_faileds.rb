class CreateFaileds < ActiveRecord::Migration[5.1]
  def change
    create_table :faileds do |t|
      t.references :contact, foreign_key: true
      t.text :text
      t.float :post_rating

      t.timestamps
    end
  end
end
