class Movie < ApplicationRecord
  validates :title, presence: true,
                   length: { minimum: 3}

  validates :short_desc, presence: true,
                         length: { minimum: 10, maximum: 200 }

  validates :description, presence: true,
                          length: { minimum: 10, maximum: 500 }
end
