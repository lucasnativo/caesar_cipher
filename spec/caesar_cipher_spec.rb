require './lib/caesar_cipher.rb'
require 'pry'

describe "#caesar_cipher" do 
	it "works with single letters" do
		expect(caesar_cipher("A", 1)).to eq("B")
	end

	it "works with words" do
		expect(caesar_cipher("Aaa", 1)).to eq("Bbb")
	end
	
	it "works with phrases" do
		expect(caesar_cipher("hello, world!", 5)).to eq("mjqqt, btwqi!")
	end
	
	it "works with words" do
		expect(caesar_cipher("Mjqqt, Btwqi!", -5)).to eq("Hello, World!")
	end
	
	it "wraps" do
		expect(caesar_cipher("Z", 1)).to eq("A")
	end

	it "works with large shift factors" do
		expect(caesar_cipher("Hello, World!", 75)).to eq("Ebiil, Tloia!")
	end

	it "works with large negative shift factors" do
		expect(caesar_cipher("Hello, World!", -29)).to eq("Ebiil, Tloia!")
	end

end