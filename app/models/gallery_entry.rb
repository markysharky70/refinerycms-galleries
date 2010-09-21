class GalleryEntry < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :body]

  validates_presence_of :name, :image
  validates_uniqueness_of :name

  belongs_to :gallery
  belongs_to :image

end