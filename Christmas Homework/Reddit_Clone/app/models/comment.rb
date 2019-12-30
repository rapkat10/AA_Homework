class Comment < ApplicationRecord
validates :body, presence: true

  after_initialize :ensure_post_id!

  belongs_to :post, inverse_of: :comments

  belongs_to :author,
    class_name: :User,
    foreign_key: :user_id,
    inverse_of: :comments

  has_many :child_comments,
    class_name: :Comment,
    foreign_key: :parent_comment_id,
    primary_key: :id

  belongs_to :parent_comment,
    class_name: :Comment,
    foreign_key: :parent_comment_id,
    primary_key: :id,
    optional: true

  private
  def ensure_post_id!
    self.post_id ||= self.parent_comment.post_id if parent_comment
  end
end

# == Schema Information
#
# Table name: comments
#
#  id                :integer(8)      not null, primary key
#  body              :text            not null
#  parent_comment_id :integer(4)
#  post_id           :integer(4)      not null
#  user_id           :integer(4)      not null
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

