FactoryBot.define do
  factory :prototype do
    title {Faker::Lorem.sentence}
    catch_copy{Faker::Lorem.sentence}
    concept{Faker::Lorem.sentence}

    after(:build) do |prototype|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end