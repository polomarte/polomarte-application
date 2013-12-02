class Task < ActiveRecord::Base
  validates_presence_of :name
  validates :finished, inclusion:{ in: [false,true]}

  belongs_to :project
end
