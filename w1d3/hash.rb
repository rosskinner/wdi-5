# A
a = ["Anil", "Erik", "Jonathan"]

# How would you return the string "Erik"?
p a[1]
# How would you add your name to the array?
p a << 'Rosalind'

# B
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# How would you return the string "One"?
p h.values[1]
# How would you return the string "Two"?
p h.values[2]
# How would you return the number 2?
p h.values[3]
# How would you add {3 => "Three"} to the hash?
p h[3] = "Three"
# How would you add {:four => 4} to the hash?
p h[:four] = 4
p h

# C

is = {true => "It's true!", false => "It's false"}
# What is the return value of is[2 + 2 == 4]?
# What is the return value of is["Erik" == "Jonathan"]?
# What is the return value of is[9 > 10]?
# What is the return value of is[0]?
# What is the return value of is["Erik"]?
p is[2 + 2 == 4]
p is["Erik" == "Jonathan"]
p is[9 > 10]
p is[0]
p is["Erik"]
p is

# D

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}
# How would you access Jonathan's Twitter handle (i.e. the string "tronathan")?
p users["Jonathan"][:twitter]
# How would you add the number 7 to Erik's favorite numbers?
p users["Erik"][:favorite_numbers] << 7

# How would you add yourself to the users hash?
users["Rosalind"] = {:twitter => "irwbg", :favorite_numbers =>[22,22]}
# How would you return the array of Erik's favorite numbers?
p users["Erik"][:favorite_numbers]
# How would you return the smallest of Erik's favorite numbers?
p users["Erik"][:favorite_numbers].min
# How would you return an array of Anil's favorite numbers that are also even?
p users["Erik"][:favorite_numbers]
# How would you return an array of the favorite numbers common to all users?
# How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
p users