# == Schema Information
#
# Table name: invites
#
#  id         :integer          not null, primary key
#  person_id  :integer
#  event_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Invite < ActiveRecord::Base
  belongs_to :person
  belongs_to :event

  validates :event_id, :uniqueness => {:scope=>:person_id}

end
