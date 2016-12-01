require('rspec')
require('pry')
require('contacts')

describe("#first_name") do
  it("returns new contact first name") do
    test_contact = Contact.new({:first_name=> "John", :last_name=> "Smith", :job_title=> "Pet Detective", :company=> "Eye Spy"})
  expect(test_contact.first_name()).to(eq("John"))
  end
end

describe("#last_name") do
  it("returns new contact last name") do
    test_contact = Contact.new({:first_name=> "John", :last_name=> "Smith", :job_title=> "Pet Detective", :company=> "Eye Spy"})
  expect(test_contact.last_name()).to(eq("Smith"))
  end
end


describe("#job_title") do
  it("returns new contact job title") do
    test_contact = Contact.new({:first_name=> "John", :last_name=> "Smith", :job_title=> "Pet Detective", :company=> "Eye Spy"})
  expect(test_contact.job_title()).to(eq("Pet Detective"))
  end
end


describe("#company") do
  it("returns new contact company") do
    test_contact = Contact.new({:first_name=> "John", :last_name=> "Smith", :job_title=> "Pet Detective", :company=> "Eye Spy"})
  expect(test_contact.company()).to(eq("Eye Spy"))
  end
end
