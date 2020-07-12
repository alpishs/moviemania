class SeasonSerializer < ActiveModel::Serializer 
  #This will cache the entire serialization of the object.
  cache key: 'season'

  attributes :id, :title, :plot

  has_many :episodes
end