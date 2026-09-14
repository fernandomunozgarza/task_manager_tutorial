class Task < ApplicationRecord
    # optional true if it's not required to have a category for a task
    belongs_to :category, optional: true
end
