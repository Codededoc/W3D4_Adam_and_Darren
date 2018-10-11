# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  user_id          :integer          not null
#  answer_choice_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord

  belongs_to  :answer_choice,
    class_name:  :AnswerChoice,
    foreign_key: :answer_choce_id,
    primary_key: :id

  belongs_to  :respondents,
    class_name:  :User,
    foreign_key: :respondent_id, #foreign_key: :user_id?
    primary_key: :id

end
