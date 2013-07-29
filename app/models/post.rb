class Post < ActiveRecord::Base

include VoteableTj
  belongs_to :creator, class_name: 'User', foreign_key: :user_id
  has_many :comments
  has_many :post_categories
  has_many :categories, through: :post_categories

  validates :title, presence: true, length: {minimum: 5}
  validates :description, presence: true
  validates :url, presence: true, uniqueness: true

  after_validation :generate_slug



  def generate_slug
    self.slug = self.title.gsub(' ', '-').downcase
  end

  def to_param
    self.slug
  end


end

