class Ward < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '5階循環器病棟' },
    { id: 3, name: '6階消化器病棟' },
    { id: 4, name: '7階がん病棟' },
    { id: 5, name: '8階外科病棟' },
    { id: 6, name: '9階内科病棟' },
    { id: 7, name: '救命救急センター' }
  ]

  include ActiveHash::Associations
  has_many :users
end
