class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  belongs_to :image
  validates :comment, presence :true

  
end


