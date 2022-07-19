class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :admin

  has_many :productions
  has_many :tickets
end
