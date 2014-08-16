class User
	attr_accessor :name, :email

	def initialize(attributes = {})
		@email = attributes[:email]
		@name  = attributes[:name]
	end

	def formatted_email
		"#{@name} <#{@email}>"
	end
end
