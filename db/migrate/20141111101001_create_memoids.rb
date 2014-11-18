class CreateMemoids < ActiveRecord::Migration
  def change
    create_table :memoids do |t|
      t.text :content

      t.timestamps
    end
  end
end
