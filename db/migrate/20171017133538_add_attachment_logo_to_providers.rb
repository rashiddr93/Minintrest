#
# AddAttachmentLogoToProviders
#
# @author rashid
#
class AddAttachmentLogoToProviders < ActiveRecord::Migration[5.1]
  def self.up
    change_table :sources do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :sources, :logo
  end
end
