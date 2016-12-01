class Contact
  @@persons = []

  attr_reader(:first_name, :last_name, :job_title, :company)

  define_method(:initialize) do |first, last, job, company|
    @first_name = first
    @last_name = last
    @job_title = job
    @company = company
  end

  define_singleton_method(:all) do
    @@persons
  end

  define_method(:save) do
    @@persons.push(self)
  end
end
