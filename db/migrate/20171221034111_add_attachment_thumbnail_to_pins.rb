class AddAttachmentThumbnailToPins < ActiveRecord::Migration[5.1]
  def change
    add_attachment :pins, :thumbnail
  end
end
