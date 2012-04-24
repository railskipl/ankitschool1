class Page < ActiveRecord::Base
 before_validation :clear_photo
  has_attached_file :photo, 
                    :default_url => '/assets/images.jpeg'
                    

 
    def delete_photo=(value)
    @delete_photo = !value.to_i.zero?
  end
  
  def delete_photo
    !!@delete_photo
  end
  alias_method :delete_photo?, :delete_photo
  
def clear_photo
  self.photo = nil if delete_photo? && !photo.dirty?
end

end
