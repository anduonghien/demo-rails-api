module Response
  def self.success(content)
    {
      status: 200, 
      message: "Sucessfully", 
      content: content
    }
  end

  def self.error(errors)
    {
      status: 500, 
      message: "Has some errors", 
      errors: errors
    }
  end

  # if def success
  # module_function :success
end