class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 100 }
    validate :category_must_be_a_fiction

    def category_must_be_a_fiction
        if category == "Fiction" || category == "Non-Fiction"
            true
        else
            errors.add(:category, "is not a type of fiction")
        end
    end
end
