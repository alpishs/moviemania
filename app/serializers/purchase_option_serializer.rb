class PurchaseOptionSerializer < ActiveModel::Serializer 
  attributes :id, :created_at

  #This will cache the entire serialization of the object.
  cache key: 'purchase_option'


  has_one :content
end