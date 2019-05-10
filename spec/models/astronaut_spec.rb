require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'class methods'do
    it 'average age of all astronauts' do
      atronaut_1 = Astronaut.create!(name: "Paul", age: 20, job: "pilot")
      atronaut_2 = Astronaut.create!(name: "Chris", age: 30, job: "co-pilot")

      expect = 25
      expected = Astronaut.average_age
      expect(expect).to eq(expected)
    end
  end


end
