class Status < ActiveRecord::Base

  validates :user, presence:true
  validates :post, presence:true
  validates :likes, presence:true

end
