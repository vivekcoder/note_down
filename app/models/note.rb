class Note < ApplicationRecord
  belongs_to :user

  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags

  validates :title, :body, :tag_names, presence: true

  # attr_accessor :tag_names

  def tag_names=(names)
    self.tags = names.reject(&:blank?).map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def tag_names
    tags.map(&:name)
  end
end
