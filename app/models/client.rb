class Client < ApplicationRecord
    has_many :memberships
    has_many :gyms, through: :memberships, dependent: :destroy
end
