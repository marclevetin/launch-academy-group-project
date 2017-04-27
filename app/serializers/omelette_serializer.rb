class OmeletteSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :ingredients, :photo
end
