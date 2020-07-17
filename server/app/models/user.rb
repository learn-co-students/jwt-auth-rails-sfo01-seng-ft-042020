class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  #######################################################################
  #### EXAMPLE of User#authenticate method using BCrypt
  #### But instead we use ABOVE  ActiveModel#has_secure_password
  #######################################################################
  # def authenticate(plaintext_password)
  #   if BCrypt::Password.new(self.password_digest) == plaintext_password
  #     self
  #   else
  #     false
  #   end
  # end
  #######################################################################

end
