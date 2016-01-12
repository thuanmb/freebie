json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password, :is_admin, :is_organization, :avatar_url, :description, :contact_address, :contact_city
  json.url user_url(user, format: :json)
end
