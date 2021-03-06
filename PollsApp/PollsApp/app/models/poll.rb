# == Schema Information
#
# Table name: polls
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Poll < ApplicationRecord

  belongs_to  :user,
    class_name:  :User,
    foreign_key: :user_id,
    primary_key: :id

  has_many  :questions,
    class_name:  :Question,
    foreign_key: :question_id,
    primary_key: :id

end
