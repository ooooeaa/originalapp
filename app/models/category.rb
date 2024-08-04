class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '基礎看護技術' },
    { id: 3, name: '循環器疾患' },
    { id: 4, name: '消化器疾患' },
    { id: 5, name: '脳・神経疾患' },
    { id: 6, name: '救命救急' },
    { id: 7, name: '外来' }
  ]

  include ActiveHash::Associations
  has_many :users
end
