class Timing < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '朝' },
    { id: 3, name: '昼' },
    { id: 4, name: '夕' },
    { id: 5, name: '寝' }
  ]
    include ActiveHash::Associations
    has_many :medicinelists
  
  end