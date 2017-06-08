json.extract! usuario, :id, :ci, :nombres, :apellidos, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
