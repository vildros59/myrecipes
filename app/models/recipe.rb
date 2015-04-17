class Recipe < ActiveRecord::Base 
  belongs_to :chef    # Create association    
  validates :chef_id, presence: true     
  # The test should validate the name and enforce that it has to be present. Otherwise the recipe should not be saved in database!  
  validates :name, presence: true, length: { minimum: 5, maximum: 100 }        
  validates :summary, presence: true, length: { minimum: 10, maximum: 150 }   
  validates :description, presence: true, length: { minimum: 20, maximum: 500 }      
end    