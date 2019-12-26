class User < ApplicationRecord

    validates :email, :password_digest, :session_token
    validates :password, length: {minumum: 6, allow_nil: true}

    after_initialize :ensure_session_token!





    
 


    def ensure_session_token!
        
    end



end
