class AddProofImageToCompleteds < ActiveRecord::Migration[5.1]
  def change
    add_column :completeds, :proof_image, :string
  end
end
