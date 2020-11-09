class Books < ActiveRecord::Base
    validates :year, :title, :series, :user_id, presence: true
   
    belongs_to :user
end



    #   t.string "year"
    #   t.string "title"
    #   t.string "series"
    #   t.integer "user_id"