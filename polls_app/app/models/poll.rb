class Poll < ApplicationRecord

  has_many :authors,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :User

end