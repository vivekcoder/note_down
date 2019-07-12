class Note < ApplicationRecord
  belongs_to :user

  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags

  validates :title, :body, :tag_names, presence: true

  attr_accessor :tag_names

  before_save :update_tags

  private
  def update_tags
    binding.pry
  end
end
