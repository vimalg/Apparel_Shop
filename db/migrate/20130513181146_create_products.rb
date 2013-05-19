class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.decimal :cost, :precision => 8, :scale => 2
      t.string :image_url

      t.timestamps
    end
  end
end
