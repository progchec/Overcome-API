class CreateRunnings < ActiveRecord::Migration[5.1]
  def change
    create_table :runnings do |t|
      t.references :contact, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
