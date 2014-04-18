class String
	def to_snake_case
		self.gsub("::", "/").
			gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2').  			# FOOBar => foo_bar
			gsub(/([a-z\d])([A-Z])/, '\1_\2').					# FOO86OBar => foo86_o_bar
			tr("-","_").
			downcase
	end

	def to_camel_case
		return self if self !~ /_/ && self =~ /[A-Z]+.*/
		split("_").map { |str| str.capitalize }.join			# foo_bar => FooBar
	end
end