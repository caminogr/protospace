class Like < ActiveRecord::Base
  belongs_to :prototype、counter_cache: :likes_count
  belongs_to :user
end
