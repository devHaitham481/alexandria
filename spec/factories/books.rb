FactoryBot.define do
  factory :book do
    title { "Ruby Under a Microscope" }
    subtitle { "An Illustrated guide to Ruby Internals" }
    isbn_10 { "1594653214" }
    isbn_13 { "9784513124659" }
    description { "Ruby Under a Microscop is a cool book!" }
    released_on { "2013-09-01" }
    publisher 
    author
  end

  factory :ruby_on_rails_tutorial, class: Book do 
    title {'Ruby on Rails Tutorial'}
    subtitle {'Learn Web Development with Rails' }
    isbn_10 {'0134077709'}
    isbn_13 {'9780134055549'}
    description {'The Rails Tutorial is great!'}
    released_on {'2013-05-09'}
    publisher
    association :author, factory: :michael_hartl
  end
  factory :agile_web_development, class: Book do 
    title { 'Agile Web Development'}
    subtitle { '' }
    isbn_10 { '1937785564' }
    isbn_13 { '9781937785567' }
    description { 'Stay agile!' }
    released_on { '2015-10-11' }
    publisher
    association :author, factory: :sam_ruby
  end
end