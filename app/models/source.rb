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
  validates_attachment_content_type :logo, content_type: %r{\Aimage\/.*\z}

  def load_pic_from(host)
    self.logo = URI.parse("#{host}/#{url.gsub(%r{.*\/\/}, '').gsub(%r{\/.*}, '')}")
    self.logo_file_name = source_id
    save
    p "Saving #{url}"
  rescue StandardError => e
    p "Can't save #{url} #{e.message}"
  end
end
