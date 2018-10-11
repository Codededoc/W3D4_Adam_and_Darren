# == Schema Information
#
# Table name: users
#
#  id       :bigint(8)        not null, primary key
#  username :string           not null
#

class User < ApplicationRecord

  has_many  :authored_polls,
    class_name:  :Poll,
    foreign_key: :poll_id,
    primary_key: :id

  has_many  :responses,
    class_name:  :Response,
    foreign_key: :response_id,
    primary_key: :id

  # has_many :answer_choices
    #should it have many answer choices?
    #through responses?

end
