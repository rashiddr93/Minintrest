require 'open-uri'
#
# Source
#
# @author rashid
#
class Source < ApplicationRecord
  belongs_to :provider
  has_many :sort_bies, dependent: :destroy
  has_attached_file :logo
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

  def load_pic_from(host)
    self.logo = URI.parse("#{host}/#{url.gsub(/.*\/\//,'').gsub(/\/.*/, '')}")
    self.logo_file_name = source_id
    self.save
    p "Saving #{url}"
  rescue
    p "Can't save #{url}"
  end
end
