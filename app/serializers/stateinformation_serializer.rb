class StateinformationSerializer < ActiveModel::Serializer
  attributes :id, :state, :asesinatos, :robos, :violaciones, :maltrato_infantil
end
