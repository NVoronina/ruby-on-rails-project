class Photo < ApplicationRecord
  #belongs_to :user
 # belongs_to :post
  dragonfly_accessor :image

  #image validations
  validates_presence_of :image
  validates_size_of :image, maximum: 20000.kilobytes,
                    message: "should not be more than 20000KB", if: :image_changed?

  validates_property :format, of: :image, in: ['jpeg', 'png', 'gif'],
                     message: "the formats allowed are: .jpeg, .png, .gif", if: :image_changed?
end
