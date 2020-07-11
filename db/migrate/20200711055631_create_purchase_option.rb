class CreatePurchaseOption < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_options do |t|
      t.float :price
      t.string :video_quality
      t.references :content, polymorphic: true, null: false
    end
  end
end
