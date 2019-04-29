class Author < ActiveRecord::Base
    #name is not blank
    #email is unique
    #phone number is 10 digits

    validates :name, presence: true
    validates :email, uniqueness: true
    validates :phone_number, length: { is: 10}
end
