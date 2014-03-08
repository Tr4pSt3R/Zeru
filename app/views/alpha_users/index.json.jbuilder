json.array!(@alpha_users) do |alpha_user|
  json.extract! alpha_user, :id, :email
  json.url alpha_user_url(alpha_user, format: :json)
end
