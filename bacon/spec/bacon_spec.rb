#require "lib/bacon.rb"
class Bacon
	attr_accessor :expired
	def edible?
		!expired
	end
	def expired!
		self.expired = true
	end
end
RSpec.describe Bacon do
	it "is edible" do	
		expect(Bacon.new.edible?).to be(true)
	end
	it "can expire" do
                bacon = Bacon.new 
                bacon.expired!
                expect(bacon).to_not be_edible
	end	

end

