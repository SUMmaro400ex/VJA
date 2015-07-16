class User < ActiveRecord::Base

  has_secure_password

  has_many :startups

  # def role
  # 	if 
  # 	self.role = "editor"
  # end

  # def editor? 
  #   self.role == "editor" 
  # end

end
