require 'securerandom'

FactoryBot.define do
  factory :grade do
    sequence(:student_id) { SecureRandom.hex(3) } # generates a random hexadecimal string of 6 characters
    sequence(:student_name) { |n| "Student #{n}" }
    student_grade { rand(1..100) } # assign a random grade from 1 to 100

    trait :valid do
      student_grade { 70 }
    end

    trait :invalid do
      student_grade { -70 }
    end
  end
end
