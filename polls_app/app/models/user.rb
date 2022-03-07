class User < ApplicationRecord

  belongs_to :authored_polls,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Poll

  has_many :responses,
    primary_key: :id,
    foreign_key: :respondent_id,
    class_name: :Response

end