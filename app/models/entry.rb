class Entry < ActiveRecord::Base
  attr_accessible :description, :title
  
  def self.search(search)
    if search
      find(:all, :conditions => ['description or title ILIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
