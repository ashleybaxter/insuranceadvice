class Entry < ActiveRecord::Base
  attr_accessible :description, :title
  
  def self.search(search)
    if search.present?
      where("description ilike :s or title ilike :s", q: "%#{searcg}%")
    else
      scoped
    end
  end
end
