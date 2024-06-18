module Calcy
	def format_string(str)
		str.gsub(/\D/, "").chars.map(&:to_i)
	end

	def find_negative_numbers(arr)
		arr.select(&:negative?)
	end
end
