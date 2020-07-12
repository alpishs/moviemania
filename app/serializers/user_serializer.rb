class UserSerializer < ActiveModel::Serializer
  #This will cache the entire serialization of the object.
  cache key: 'user'

  attributes :id, :email, :dob, :age, :name
end