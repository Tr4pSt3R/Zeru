class RenameReleasedatesTable < ActiveRecord::Migration
  def change
    rename_table :releasedates, :release_dates
  end
end
