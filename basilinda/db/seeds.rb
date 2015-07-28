#Initial Users
User.create(first_name: "Bik", last_name: "Virk", password: "hello", email: "bikram.virk@gmail.com", token: "fauxtoken")
User.create(first_name: "John", last_name: "Hess", password: "hello", email: "hessjohnt@gmail.com", token: "fauxtoken")
User.create(first_name: "Sung", last_name: "Choi", password: "hello", email: "sbchoi86@gmail.com", token: "fauxtoken")
User.create(first_name: "Andrea", last_name: "Coravos", password: "hello", email: "acoravos@gmail.com",token: "fauxtoken")
User.create(first_name: "Julia", last_name: "Chou", password: "hello", email: "jchou@gmail.com",token: "fauxtoken")
User.create(first_name: "Tim", last_name: "Cannady", password: "hello", email: "tcannady@gmail.com",token: "fauxtoken")

# Seeding the random challenges via two files (e.g., a dare and a seed fiel)
random_challenge_arr = []
File.foreach('db/dare_seed.txt') do |dare_description|
      random_challenge_arr.push({dare: dare_description})
    end

i = 0
File.foreach('db/truth_seed.txt') do |truth_description|
  random_challenge_arr[i][:truth] = truth_description
  i += 1
end

random_challenge_arr.each do |truthordare|
  RandomChallenge.create(truthordare)
end
