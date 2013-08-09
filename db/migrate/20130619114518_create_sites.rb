class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :url
      t.integer :user_id
      t.datetime :next_ping_at

      t.timestamps
    end
  end
end
