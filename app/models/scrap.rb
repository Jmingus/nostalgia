class Scrap < ActiveRecord::Base
  belongs_to :user
  has_attached_file :scrap_picture, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :scrap_picture, :content_type => /\Aimage\/.*\Z/
  validates_presence_of :caption,:title,:scrap_picture
  validates_uniqueness_of :title,:scrap_picture

  scope :favorite_tag, -> {order(:favorite => :desc)}
end
