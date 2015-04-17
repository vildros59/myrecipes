class Chef < ActiveRecord::Base 
  has_many :recipes    # create association    
  before_save { self.email = email.downcase }     
  validates :chefname, presence: true, length: { minimum: 3, maximum: 39 }     
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i  
  validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }        
end      

