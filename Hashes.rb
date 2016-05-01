

#Creating empty hashes
a = {}
a = Hash.new

#Create empty hash but create default value
  #keys without value will be set to 0
a = Hash.new(0)

#Create with symbol
a = {fish: "salmon"}
  {:fish => "salmon"}

a = {"fish": "salmon"}
  {:fish => "salmon"}

  #both will make symbol hash pair

#Create with string
a = {"fish" => "salmon"}
 {"fish" => "salmon"}

# this makes a string hash pair


#Create with integer
a = {1 => :fish}
a = {1 => "hello"}
a = {1 => 5}

a = {1: "fish"}
 #will not work. cannot use integer symbol to create hash pair

# Insert /edit hash. Just set a value to a key you want for the hash.
a = {1 => "a"}
a[2] = "b"

# a[2] is now  {2 => "b"}

#Add key/value hash pair to hash
#Merging 2 hashes will overwrite a value if 2 same keys exist.
a = {fish: "salmon"}

b = {fruit: "apple"}

c = {fish: "cod"}

a.merge(b)
  {1=>"fish", :fruit=>"apple"} 


#Array to hash
a = [1,2,3,4]
z = [[:a, 1], [:b, 2]]

 #method 1 #error if array is odd numbers
 #risk of blowing your stack if large array. Use cautiously
b = Hash[*a]
  {1 => 2, 3 => 4}
 #method 2 - slices array into sub arrays of 2, then you take that array and turn into keypair hash
 #this can take odd number of array and match default value 
b = Hash[a.each_slice(2).to_a]

#if array is in sub-arrays of key-value, can convert to hash with .to_h
b = [[1,"a"], [2, "b"]]
b = z.to_h
#  will return "{1 => "a", 2 => "b"}

#Access hash using index value
h = {1 => 5, 2 =>10, 3 => 15}
h.keys
h[h.keys[0]]

#Get hash keys
h = {1 => 5, 2 =>10, 3 => 15}
h.keys

# Get hash values
h = {1 => 5, 2 =>10, 3 => 15}
h.values

# Find hash with specific key 
h = {1 => 5, 2 =>10, 3 => 15}
h.select {|key, value| key == 1}

# Find hash with specific value
h = {1 => 5, 2 =>10, 3 => 15}
h.select {|key, value| value == 5}
 


