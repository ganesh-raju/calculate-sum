#!/usr/bin/ruby
$LOAD_PATH << '.'

require 'calcy'

class Calculator
	extend Calcy

	attr_reader :values

	def initialize(value)
		@values = value
	end

	def add
		negatives = Calculator.find_negative_numbers(values)
		raise "negative numbers not allowed #{negatives.join(", ")}" unless negatives.empty?

		puts "-"*10
		puts "Sum of values from string: \n"
		values.sum
	end

end

## test case for validating methods in ruby Calculator class

# describe CalculatorSpec do 
#    context "Your are testing Calculator" do 
      
#       it "calculate sum" do 
#         formatted_arr = Calculator.format_string("34@!!909")
#         cal = Calculator.new(formatted_arr).add
#         expect(cal).to eq 35
#       end
      
#    end
# end

int_array = Calculator.format_string("..aa31[]111")
final_sum = Calculator.new(int_array).add

puts final_sum
