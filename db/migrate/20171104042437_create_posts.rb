class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :social
      t.string :customer_name
      t.string :customer_id
      t.string :link
      t.datetime :posted_datetime
      t.text :post_content

      t.timestamps
    end
  end
end
