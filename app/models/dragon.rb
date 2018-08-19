class Dragon < ApplicationRecord
  belongs_to :user, optional: true
end
