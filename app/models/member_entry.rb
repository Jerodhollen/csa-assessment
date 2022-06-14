class MemberEntry < ApplicationRecord
  before_save :replace_nil_values
  self.inheritance_column = "not_sti"

    def self.search(search)
        if search 
            where(["organization LIKE ? OR service LIKE ? OR scheme LIKE ?","%#{search}%", "%#{search}%", "%#{search}%"])
        else
            all
        end
    end 

    def created_at
      attributes['created'].strftime("%b %d, %Y")
    end

  
end
