class Post < ActiveRecord::Base
    #title is not blank
    #content is min 100
    #category is fiction or non-fiction

    validates :title, presence: true
    validates :content , length: { minimum: 100 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
end
