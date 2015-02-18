class AddAttachmentScrapPictureToScraps < ActiveRecord::Migration
  def self.up
    change_table :scraps do |t|
      t.attachment :scrap_picture
    end
  end

  def self.down
    remove_attachment :scraps, :scrap_picture
  end
end
