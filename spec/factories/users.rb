FactoryBot.define do
  factory :user do
    name {Faker::Name.name}
    email {Faker::Internet.email}
    password {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    profile{Faker::Lorem.sentence}
    occupation{Faker::Job.title}
    position{Faker::Job.position}
  end
end