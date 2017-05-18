class AddAttachmentAvatarToUtilisateurs < ActiveRecord::Migration[5.1]
  def self.up
    change_table :utilisateurs do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :utilisateurs, :avatar
  end
end
