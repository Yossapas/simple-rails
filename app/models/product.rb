class Product < ActiveRecord::Base
  #attr_accessible :name, :description, :price
  
  has_attached_file :photo, :styles => { :tiny => "50x50#", :small => "150x150>" },
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
                  
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
  def self.search(query)
    where("name like ?", "%#{query}%")
  end
  
end
