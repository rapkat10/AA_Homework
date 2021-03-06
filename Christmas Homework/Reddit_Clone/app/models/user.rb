class User < ApplicationRecord
    

    validates :name, :password_digest, :session_token, presence: true
    validates :password, length: { minimum: 6, allow_nil: true }
    validates :session_token, :name, uniqueness: true

    after_initialize :ensure_session_token

    attr_reader :password

    has_many :subs,
        class_name: :Sub,
        foreign_key: :owner_id,
        primary_key: :id,
        inverse_of: :owner

    has_many :posts, inverse_of: :author
    has_many :comments, inverse_of: :author
    has_many :user_votes, inverse_of: :user

    def self.find_by_credentials(name, password)
        user = User.find_by(name: name)
        user.try(:is_password?, password) ? user : nil
    end

    def is_password?(unencrypted_password)
        bcp = BCrypt::Password.new(self.password_digest)
        bcp.is_password?(unencrypted_password)
    end

    def password=(unencrypted_password)
        if unencrypted_password.present?
            @password = unencrypted_password
            self.password_digest = BCrypt::Password.create(unencrypted_password)
        end
    end

    def reset_session_token!
        self.session_token = SecureRandom.urlsafe_base64(16)
        self.save!
        self.session_token
    end

    private

    def ensure_session_token
        self.session_token ||= SecureRandom.urlsafe_base64(16)
    end
end


# == Schema Information
#
# Table name: users
#
#  id              :integer(8)      not null, primary key
#  name            :string          not null
#  password_digest :string          not null
#  session_token   :string          not null
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

