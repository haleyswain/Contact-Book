class Contact
  @@persons = []

  attr_reader(:first_name, :last_name, :job_title, :company)

  define_method(:initialize) do |info|
    @first_name = info.fetch(:first_name)
    @last_name = info.fetch(:last_name)
    @job_title = info.fetch(:job_title)
    @company = info.fetch(:company)
  end

  define_singleton_method(:all) do
    @@persons
  end

  define_method(:save) do
    @@persons.push(self)
  end

  define_singleton_method(:clear) do
    @@persons = []
  end
end
