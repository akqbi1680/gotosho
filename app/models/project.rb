class Project < ApplicationRecord

  has_many :organizations
  belongs_to :user

end
