class User < ApplicationRecord

    validates :email, :password_digest, :session_token
    

end
