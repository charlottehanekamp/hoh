class AgendaEntity < Grape::Entity
  expose :title
  expose :location_id
  expose :content
  expose :end_at
  expose :start_at
  expose :created_at
end
