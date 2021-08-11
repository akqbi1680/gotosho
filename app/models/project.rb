class Project < ApplicationRecord

  has_many :organizations
  belongs_to :user

  enum status_screening_id: {
    '未申請':1,
    '応募済':2,
    '審査中':3,
    '要確認':4,
    '審査完了':5,
    '不適合':6
  }

end
