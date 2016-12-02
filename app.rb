require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/contacts")
require('./lib/email')

get("/") do
  erb(:index)
end

post("/success") do
  first_name = params.fetch("firstName")
  last_name = params.fetch("lastName")
  job_title = params.fetch("jobTitle")
  company = params.fetch("company")
  persons = Contact.new({:first_name => first_name, :last_name => last_name, :job_title => job_title, :company => company})
  persons.save()
  erb(:success)
end

get("/contacts") do
  @persons = Contact.all()
  @emails = Email.all()
  erb(:contacts)
end

post("/email") do
  @persons = Contact.all()
  @emails = Email.all()
  email = params.fetch("email")
  emails = Email.new(email)
  emails.save()
  erb(:contacts)
end
