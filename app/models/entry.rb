class Entry < ActiveRecord::Base
  attr_accessible :description, :title
  
  def self.search(search)
    if search
      find(:all, :conditions => ['description or title LIKE ?', "%#{search.upcase}%"])
    else
      find(:all)
    end
  end
end
