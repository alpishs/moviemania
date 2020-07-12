class MovieSerializer < ActiveModel::Serializer 
  attributes :id, :title, :plot

  #This will cache the entire serialization of the object.
  cache key: 'movie'

end