#
# CreateProviders
#
# @author rashid
#
class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :name
      t.integer :status
      t.string :url

      t.timestamps
    end
  end
end
