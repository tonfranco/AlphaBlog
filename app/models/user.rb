class User < ApplicationRecord

    #associocao
    has_many :articles

    before_save { self.email = email.downcase }

    #Validaçao de Usuario
    validates :username, presence: true, 
              uniqueness: { case_sensitive: false }, 
              length: { minimum: 3, maximum: 25 }

    #Regex para validacao de e-mail
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    #Validacao de Email
    validates :email, presence: true, 
              length: { maximum: 105 },
              uniqueness: {case_sensitive: false},
              format: {with: VALID_EMAIL_REGEX}
    
    has_secure_password

end
