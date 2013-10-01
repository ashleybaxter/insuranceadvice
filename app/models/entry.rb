class Entry < ActiveRecord::Base
  attr_accessible :description, :title, :tag_list, :landlord_id, :guide_id, :home_id
  acts_as_taggable
  
  validates :landlord_id, :uniqueness => true, :if => :landlord_id?
  validates :guide_id, :uniqueness => true, :if => :guide_id?
  validates :home_id, :uniqueness => true, :if => :home_id?
  
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
  
  def next
    self.class.find(:first, :conditions => ["landlord_id > ?",self.landlord_id])
  end

end
