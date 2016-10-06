class Pin < ActiveRecord::Base
  # associations
  belongs_to :user

  # validations
  validates :image, presence: true
  validates :description, presence: true

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
