class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :organizations
  has_one :project

  enum category_id: {
    '事務局マスター':1,
    '事務局審査':2,
    '事務局':3,
    '事業者':4,
    'その他':5
  }

end
