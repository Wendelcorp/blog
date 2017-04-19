class Post < ApplicationRecord
  has_attached_file :image, styles: { large: "500x500>", medium: "300x300>", thumb: "150x150>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  acts_as_taggable
  validates :title, presence: true, length: { minimum: 4 }
  validates :body, presence: true
end
