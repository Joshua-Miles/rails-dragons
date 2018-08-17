class User < ApplicationRecord
    has_many :dragons

    def dragon_list
        Dragon.all.select do |dragon| 
        dragon.user_id == self.id
        end
    end
end
