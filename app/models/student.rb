class Student < ApplicationRecord
    has_and_belongs_to_many :clubs
    
    def clubs_as_string
        result = ""
        clubs.order(:name).each do |club|
           if result != ""
               result << ", "
           end
           result << club.name 
        end
        return result         
    end
end
