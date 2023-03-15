class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, except: :created_at, :updated_at
end
