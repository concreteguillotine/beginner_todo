class Task < ApplicationRecord
    include Urgent

    validates :taskname, presence: true
end
