class Scrap < ActiveRecord::Base
  belongs_to :user
  has_attached_file :scrap_picture, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png",
                    :url =>':s3_domain_url',
                    :path => '/:class/:attachment/:id_partition/:style/:filename'
  validates_attachment_content_type :scrap_picture, :content_type => /\Aimage\/.*\Z/
  validates_presence_of :caption,:title
  validates_uniqueness_of :title

  scope :favorite_tag, -> {order(:favorite => :desc)}
end
