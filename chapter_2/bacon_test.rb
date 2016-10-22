require 'minitest/autorun'

class BaconTest<Minitest::Test
	def test_saved
		assert Bacon.saved?, "our bacon was not saved! :("
	end
end

class Bacon
	def self.saved?
		false
	end
end
