class EpisodeSerializer < ActiveModel::Serializer 
  #This will cache the entire serialization of the object.
  cache key: 'episode'

  attributes :id, :title, :plot, :season_id

  belongs_to :season
end