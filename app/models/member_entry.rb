class MemberEntry < ApplicationRecord
  self.inheritance_column = "not_sti"

    def self.search(search)
        if search 
            where(["organization LIKE ?","%#{search}%"])
        else
            all
        end
    end 
end
