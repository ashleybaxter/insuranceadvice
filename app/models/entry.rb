class Entry < ActiveRecord::Base
  attr_accessible :description, :title
  
  def self.search(search)
    if search.present?
      where("description ilike :q or title ilike :q", q: "%#{search}%")
    else
      scoped
    end
  end
end
