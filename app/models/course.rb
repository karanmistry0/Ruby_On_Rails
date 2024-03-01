class Course < ApplicationRecord
  validates :name,:duration,presence:true
end
