require_relative "../lib/person"

describe Person do
  describe "#full_name" do
    it "returns the first and last names concatenated" do
      fname = 'Zug'
      lname = 'Zyz'
      person = Person.new(first_name: fname, last_name: lname)
      expect(person.full_name).to eq(fname + ' ' + lname)
    end
  end
end
