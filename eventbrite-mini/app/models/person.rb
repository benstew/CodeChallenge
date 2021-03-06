# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  firstname  :string
#  lastname   :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ActiveRecord::Base
  has_many :invites
  has_many :events, through: :invites

end
