class User < ApplicationRecord

    validates :email, :password_digest, :session_token
    validates :password, length: {minumum: 6, allow_nil: true}

    after_initialize :ensure_session_token!

    def self.find_by_credentials(email, password)

    end

    

    def ensure_session_token!
        
    end



end
