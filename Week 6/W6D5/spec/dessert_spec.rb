require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:cheesecake) { Dessert.new('cheesecake', 12, 'ramsey') }
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(cheesecake.type).to eq('cheesecake')
    end

    it "sets a quantity" do
      expect(cheesecake.quantity).to eq(12)
    end

    it "starts ingredients as an empty array" do 
      expect(cheesecake.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new('cheesecake', 'twelve', 'Ramsey') }.to raise_error("Not an integer")
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(cheesecake.add_ingredient('strawberry')).to eq(['strawberry'])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      cheesecake.add_ingredient('strawberry')
      cheesecake.add_ingredient('cheese')
      cheesecake.add_ingredient('cream')
      expect(cheesecake.mix!).to_not eq(cheesecake.ingredients.shuffle)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      expect(cheesecake.eat(4)).to eq(8)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { cheesecake.eat(14) }.to raise_error('not enough left!')
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      cheesecake.serve
      expect(cheesecake.chef).to eq('Ramsey')
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      make_more = cheesecake.make_more
      expect(cheesecake.temp).to eq(400)
    end
  end
end
