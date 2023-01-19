class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|

      t.timestamps
      
      t.string :shop_name
      t.text :caption
      t.integer :user_id
    end
    
    create_table :PostImage, :id => false do |t|
      t.integer :id, :primary_key => true
    end
  end
end
