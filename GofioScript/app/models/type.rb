class Type < ApplicationRecord
  has_many :attractives

  scope :insertTypeIfNotExist, -> (type) {
    if where(:name => type).empty?
      Type.create(name: type).save!
    end
  }

  scope :getTypeIdFromType, -> (type) {
    Type.find_by name: type
  }
end
