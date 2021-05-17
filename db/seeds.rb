puts 'Creating 10 products...'
10.times do |i|
  product = Product.create!(
    name: Faker::Company.name,
    tagline: Faker::Company.catch_phrase
  )
  puts "#{i + 1}. #{product.name}"
end
puts 'Done!'