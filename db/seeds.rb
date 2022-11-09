
puts "🌱 Seeding spice"

Veterinarian.create(name: "Dane Boxer", phone_number: "(973)845-7230")
Veterinarian.create(name: "Raven Fox", phone_number: "(862)583-0954")

Patient.create(name: "Liza", animal_type: "lizard", breed: "green iguana", age: 15, weight: "4.6 lb")
Patient.create(name: "Liza", animal_type: "lizard", breed: "green iguana", age: 15, weight: "4.6 lb", sex: "female")
Patient.create(name: "Donnashello", animal_type: "turtle", breed: "snapping turtle", age: 22, weight: "23.1 lb", sex: "male")
Patient.create(name: "Cheddar", animal_type: "mouse", breed: "satin mouse", age: 1, weight: "1.1 lb", sex: "male")
Patient.create(name: "Nami", animal_type: "dog", breed: "pomeranian", age: 2, weight: "4.8 lb", sex: "female")
Patient.create(name: "Pidgey", animal_type: "bird", breed: "cockatiel", age: 9, weight: "3.3 oz", sex: "male")
Patient.create(name: "Cherry", animal_type: "cat", breed: "balinese cat", age: 7, weight: "9.2 lb", sex: "female")
Patient.create(name: "Matcha", animal_type: "dog", breed: "samoyed", age: 3, weight: "38.8 lb", sex: "female")
Patient.create(name: "Sashimi", animal_type: "fish", breed: "butterfly fish", age: 1, weight: "0.8 oz", sex: "female")

7.times do
    Owner.create(
        name: Faker::Name.unique.name,
        phone_number: Faker::PhoneNumber.unique.cell_phone,
        email: Faker::Internet.unique.email
    )
end

puts "✅ Done seeding!"
