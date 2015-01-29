class Hospital < ActiveRecord::Base
  validates :name, presence: true
  


  has_many :patients, dependent: :destroy
  
end

