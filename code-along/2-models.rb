# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
# SQL: INSERT INTO
# Important: Company is case-sensitive (here it refers to the Company class within company.rb)
new_company = Company.new
#puts new_company.inspect
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"]  = "https://apple.com"
#p new_company

#.save adds this row (company) into the database
new_company.save
#p new_company

new_company = Company.new
new_company["name"] = "Amazon"
new_company["city"] = "Seattle"
new_company["state"] = "WA"
new_company["url"] = "https://amazon.com"
#p new_company
new_company.save

new_company = Company.new
new_company["name"] = "Airbnb"
new_company["city"] = "San Francisco"
new_company["state"] = "CA"
new_company["url"] = "https://airbnb.com"
#p new_company
new_company.save


# 3. query companies table to find all row with California company
no_of_companies = Company.all.count
puts "Companies: #{no_of_companies}"

# Number of companies in California
cali_companies = Company.where({"state" => "CA"})
p cali_companies
#puts "There are #{cali_companies.count} companies located in California"

# # 4. query companies table to find single row for Apple
# #apple = Company.where({"name" => "Apple"})[0]
apple = Company.find_by({"name" => "Apple"})
# p apple 

# 5. read a row's column value
apple["url"] = "https://www.apple.com"
p apple
apple.save
p apple

# 6. update a row's column value

# 7. delete a row
airbnb = Company.find_by({"name" => "Airbnb"})
p airbnb
airbnb.destroy
p airbnb

no_of_companies = Company.all.count
puts "Companies: #{no_of_companies}"
