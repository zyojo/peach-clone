FactoryBot.define do
  factory :admin do
    email { 'test@example.com' }
    password { 'correct_password' }
  end
end
