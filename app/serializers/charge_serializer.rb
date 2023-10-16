class ChargeSerializer < ActiveModel::Serializer
  attributes :id, :origin, :destination, :price
end
