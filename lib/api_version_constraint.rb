class ApiVersionConstraint
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    # Check if in the namespace in the api routes is default or an specific.
    @default || req.headers['Accept'].include?("application/vnd.taskmanager.v#{ @version }")
  end
end