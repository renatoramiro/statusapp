class CreatePings < ActiveRecord::Migration
  def change
    create_table :pings do |t|
      t.float :average_time
      t.integer :status
      t.integer :site_id

      t.timestamps
    end
  end
end
