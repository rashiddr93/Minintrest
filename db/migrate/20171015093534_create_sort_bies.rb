#
# CreateSortBies
#
# @author rashid
#
class CreateSortBies < ActiveRecord::Migration[5.1]
  def change
    create_table :sort_bies do |t|
      t.integer :source_id
      t.string :name
      t.string :priority, default: 10

      t.timestamps
    end
  end
end
