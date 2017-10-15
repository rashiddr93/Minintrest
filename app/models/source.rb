#
# Source
#
# @author rashid
#
class Source < ApplicationRecord
  belongs_to :provider
  has_many :sort_bies, dependent: :destroy
end
