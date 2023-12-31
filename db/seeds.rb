# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(email: "test@test.com", name: "LMD", password: "secret", password_confirmation: "secret")
User.create(email: "test2@test.com", name: "Lajos", password: "secret", password_confirmation: "secret")

5.times do |x|
    Post.create(title: "Title #{x}", body: "Body #{x} words go here idk", user_id: User.first.id)
end