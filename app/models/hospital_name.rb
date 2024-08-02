class HospitalName < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'おとな病院' },
    { id: 3, name: 'こども病院' },
    { id: 4, name: 'がんセンター' },
    { id: 5, name: 'ハートクリニック' },
    { id: 6, name: 'メンタルクリニック' },
    { id: 7, name: '感染症病院' }
  ]

  include ActiveHash::Associations
  has_many :users
end
