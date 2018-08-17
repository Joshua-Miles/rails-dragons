class User < ApplicationRecord
  has_many :dragons

  def dragon=(name)
  end
end
