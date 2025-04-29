# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Ben"
new_salesperson["last_name"] = "Block"
new_salesperson["email"] = "benblock@kellogg.northwestern.edu"
new_salesperson.save

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Brian"
new_salesperson["last_name"] = "Eng"
new_salesperson["email"] = "brianeng@kellogg.northwestern.edu"
new_salesperson.save

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Vivek"
new_salesperson["last_name"] = "Kannan"
new_salesperson["email"] = "vivekk@kellogg.northwestern.edu"
new_salesperson.save


# 3. write code to display how many salespeople rows are in the database
no_of_salespeople = Salesperson.all.count
puts""
puts "Salespeople: #{no_of_salespeople}"
puts""

# ---------------------------------
# Salespeople: 3

# 4. modify/update column data for a row in the salespeople table.
vivek = Salesperson.find_by({"first_name" => "Vivek"})
vivek["email"] = "vivekkannan@kellogg.northwestern.edu"
vivek.save
#p vivek

# CHALLENGE:
# 5. write code to display each salesperson's full name

puts "Sales Team:"



salespeople = Salesperson.all

for person in salespeople
    puts "#{person["first_name"]} #{person["last_name"]}"
end

puts""

# index = 0
# loop do
#   if index == salespeople.count
#     break
#   end

#   person = salespeople[index]
#   first_name = person["first_name"]
#   last_name = person["last_name]

#   puts "#{first_name} #{last_name}"
#   index = index + 1
# end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
