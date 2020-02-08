#Spec file
require 'car'

#Example group
describe 'Car' do

  #Nested group. Describe or Context
  describe 'attributes' do
    
    #Example
    it "allows reading and writing for :make" do
      car = Car.new
      car.make = 'Test'
      #Expectations: expect( ).to( )  or  expect( ).not_to( )
      expect(car.make).to eq('Test')
    end
    
    #temporarily skip by writin x beforehand
    xit "allows reading and writing for :year" do
      car = Car.new
      car.year = 9999
      expect(car.year).to eq(9999)
    end
    
    it "allows reading and writing for :color" do
      car = Car.new
      car.color = 'foo'
      expect(car.color).to eq('foo')
    end
    
    it "allows reading for :wheels" do
      #You can skip a test and give it a reason, or type pending instead of skip but will show as error, because it runs the tests
      skip("Debugging a problem")
      #pending("Debugging a problem")
      car = Car.new
      expect(car.wheels).to eq(4)
    end

    #this will show as pending
    it "allows writing for :doors" 
    
  end
  
  describe '.colors' do

    it "returns an array of color names" do
      c = ['blue', 'black', 'red', 'green']
      expect(Car.colors).to match_array(c)
    end

  end
  
  describe '#full_name' do
    
    it "returns a string in the expected format" do
      @honda = Car.new(:make => 'Honda', :year => 2004, :color => 'blue')
      expect(@honda.full_name).to eq('2004 Honda (blue)')
    end
    
    context 'when initialized with no arguments' do
      it 'returns a string using default values' do
        car = Car.new
        expect(car.full_name).to eq('2007 Volvo (unknown)')
      end
    end

  end

end
