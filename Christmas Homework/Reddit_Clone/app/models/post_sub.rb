class PostSub < ApplicationRecord

    belongs_to :sub

    belongs_to :post


end

# == Schema Information
#
# Table name: post_subs
#
#  id         :integer(8)      not null, primary key
#  post_id    :integer(4)      not null
#  sub_id     :integer(4)      not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

