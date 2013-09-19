class Entry < ActiveRecord::Base
  attr_accessible :description, :title, :tag_list, :landlord_id, :guide_id
  acts_as_taggable
  
  def to_param
    "#{id} #{title}".parameterize
  end
  
  def self.search(search)
    if search.present?
      where("description ilike :q or title ilike :q", q: "%#{search}%")
    else
      scoped
    end
  end

end
