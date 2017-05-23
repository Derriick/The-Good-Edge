class Image < ApplicationRecord
	belongs_to :article

	has_attached_file :file, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/images/missing.png"
	validates_attachment_content_type :file, content_type: /\Aimage\/.*\z/
end
