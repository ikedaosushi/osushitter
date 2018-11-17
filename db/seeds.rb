User.create!(name: "ikeda yutaro", 
  email: "ikedaosushi@example.com",
  password: "foobar",
  password_confirmation: "foobar",
  activated: true,
  activated_at: Time.zone.now
)
User.create!(name: "Exmaple User", 
  email: "example@example.com",
  password: "foobar",
  password_confirmation: "foobar",
  activated: true,
  activated_at: Time.zone.now
)

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@example.com"
  password = "password"
  User.create!(
    name: name, email: email, password: password, password_confirmation: password,
    activated: true, activated_at: Time.zone.now
    )
end

# rails generate mailer UserMailer account_activation password_reset