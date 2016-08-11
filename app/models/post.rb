class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  def update_posts_counter
    user.update(posts_counter: user.posts.count)
  end

  def recent_5_comments
    comments.limit(5).order(created_at: :desc)
  end
end