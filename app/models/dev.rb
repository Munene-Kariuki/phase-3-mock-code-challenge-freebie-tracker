class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def recieved_one? (item_name)
    self.freebies.each do |freebie| 
      if freebie.item_name == item_name
        return true
      end  
    end
    false  
  end  
end
