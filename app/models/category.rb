class Category < ApplicationRecord
    #category has many tasks
    has_many :tasks
end
