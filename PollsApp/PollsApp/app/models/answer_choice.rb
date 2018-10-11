# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  text        :text             not null
#  question_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnswerChoice < ApplicationRecord

  belongs_to  :poll,
    class_name:  :Poll,
    foreign_key: :poll_id,
    primary_key: :id

  has_many  :responses,
    class_name:  :Response,
    foreign_key: :response_id,
    primary_key: :id



end
