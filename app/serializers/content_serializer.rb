class ContentSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :title, :ctype, :created_at, :updated_at
  # belongs_to :project
end
