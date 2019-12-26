class User < ApplicationRecord

    validates :email, :password_digest, :session_token
    validates :password, length: {minumum: 6, allow_nil: true}

    

end
