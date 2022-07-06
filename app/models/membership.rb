class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates :gym_id, presence: true
  validates :client_id, presence: true 
  validates :charge, presence: true

  validates :client, uniqueness: {scope: :gym}

  
end
