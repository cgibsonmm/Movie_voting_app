class Movie < ApplicationRecord
	acts_as_votable
	has_attached_file :image, styles: { medium: "350x350>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, length: { in: 2..50 }
  validates :image, presence: true
end
