class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :text, presence: true
  has_many :comments

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>" thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
