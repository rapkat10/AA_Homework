class Post < ApplicationRecord
    

    validates :title, presence: true
    validates :subs, presence: { message: 'must have at least one sub' }

    has_many :post_subs, inverse_of: :post, dependent: :destroy

    has_many :subs, through: :post_subs, source: :sub
    
    has_many :comments, inverse_of: :post

    belongs_to :author,
        class_name: :User,
        foreign_key: :user_id,
        inverse_of: :posts

    def comments_by_parent
        comments_by_parent = Hash.new { |hash, key| hash[key] = [] }

        self.comments.includes(:author).each do |comment|
        comments_by_parent[comment.parent_comment_id] << comment
        end

        comments_by_parent
    end

end

# == Schema Information
#
# Table name: posts
#
#  id         :integer(8)      not null, primary key
#  title      :string          not null
#  url        :string
#  content    :text
#  user_id    :integer(4)      not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

