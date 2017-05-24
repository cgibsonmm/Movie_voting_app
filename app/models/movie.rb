class Movie < ApplicationRecord
	acts_as_votable
	has_attached_file :image, styles: { medium: "350x350>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
