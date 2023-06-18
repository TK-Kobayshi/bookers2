class BookComment < ApplicationRecord
belongs_to :book, optional: true
belongs_to :user, optional: true

validates :comment, presence: true
end
