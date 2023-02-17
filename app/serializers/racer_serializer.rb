class RacerSerializer < ActiveModel::Serializer
  attributes :id, :f_name, :l_name, :city, :state, :lat, :lng
end
