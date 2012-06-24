Given /^the following user records? exists?$/ do |table|
  table.hashes.each do |hash|
    User.create!(hash)
  end
end