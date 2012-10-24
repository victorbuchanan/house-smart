class AddAttachmentPhotoToHouses < ActiveRecord::Migration
  def self.up
    change_table :houses do |t|

      t.has_attached_file :photo

    end
  end

  def self.down

    drop_attached_file :houses, :photo

  end
end
