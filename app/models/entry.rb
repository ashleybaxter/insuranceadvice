class Entry < ActiveRecord::Base
  attr_accessible :description, :title
  
  def self.search(search)
    if search
      find(:all, :conditions => ['UPPER(description) or UPPER(title) LIKE ?', "%#{search.upcase}%"])
    else
      find(:all)
    end
  end
end
