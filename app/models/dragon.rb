class Dragon < ApplicationRecord
    belongs_to :user
    validates :users, presence: true
end
