class CreateLegislators < ActiveRecord::Migration[5.1]
  def change
    create_table :legislators do |t|
      t.string :first_name
      t.string :last_name
      t.string :facebook_id
      t.string :twitter_id
      t.string :other_id
      t.text :detail

      t.timestamps
    end
  end
end
