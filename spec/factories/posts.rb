FactoryBot.define do
  factory :post do
    title { "You Won't Believe This--it is hot outside"}
    content { "It is so hot that the pavement is melting, my cats have shed all their fur, everyone is sunburned, and I think that I haven't slept in 4 days. What are we going to do? OMG what if global warming is actually a thing? Like, for real? What's going to happen to us? What's going to happen to the planet?"}
    summary { "It's like sup hot."}
    category { "Non-Fiction" }
  end
end
