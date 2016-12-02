class Email
  @@emails = []
  def initialize(new_email)
    @new_email = new_email
  end

  def new_email
    @new_email
  end

  define_singleton_method(:all) do
    @@emails
  end

  define_method(:save) do
    @@emails.push(self)
  end

  define_singleton_method(:clear) do
    @@emails = []
  end
end
