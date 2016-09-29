FactoryGirl.define do
  factory :user do
    email('test@email.com')
    password('password')
    password_confirmation('password')
  end
end

FactoryGirl.define do
  factory :topic do
    name('Love')
  end
end

FactoryGirl.define do
  factory :ailment do
    description('Jealousy')
    topic
  end
end

FactoryGirl.define do
  factory :cure do
    symptom('Love is making you sick')
    headline('Cures for Lovesickness')
    therapy('Regain reason')
    author('Plato')
    book_title('Symposium')
    book_cover('Amazon.com')
    ailment
  end
end
