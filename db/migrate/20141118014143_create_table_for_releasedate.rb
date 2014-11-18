class CreateTableForReleasedate < ActiveRecord::Migration
  def change
    create_table :releasedates do |t|
      t.string "delivery_date"
      t.integer "memoid_id"
    end
  end
end
