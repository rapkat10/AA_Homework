class User < ApplicationRecord

    validates :email, :password_digest, :session_token
    validates :password, length: {minumum: 6, allow_nil: true}

    attr_reader :password

    after_initialize :ensure_session_token!

    def self.find_by_credentials(email, password)
        user = user.find_by(email: email)

    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        bcp = BCrypt::Password.new(self.password_digest)
        bcp.is_password?(password)
    end

    def reset_session_token

    end

    def ensure_session_token!
        
    end



end
