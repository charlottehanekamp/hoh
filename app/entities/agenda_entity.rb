class AgendaEntity < Grape::Entity
  expose :title
  expose :content
  expose :end_at
  expose :start_at
  expose :created_at
end
