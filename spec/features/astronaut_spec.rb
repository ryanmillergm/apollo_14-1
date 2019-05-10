require "rails_helper"

RSpec.describe "astronaut", type: :feature do
  before :each do
    @atronaut_1 = Astronaut.create!(name: "Paul", age: 24, job: "pilot")
    @atronaut_2 = Astronaut.create!(name: "Chris", age: 24, job: "co-pilot")
    @mission_1 = Mission.create!(:name "Apollo 13")
    @mission_2 = Mission.create!(:name "Capricorn 4")
    @mission_3 = Mission.create!(:name "Gemini 7")
  end

  it "index page astronaut has astronauts name, age and job" do
    visit '/astronauts'

    expect(page).to have_content(@atronaut_1.name)
    expect(page).to have_content(@atronaut_1.age)
    expect(page).to have_content(@atronaut_1.job)
  end

  it "index page has list of space missions in alphabetical order" do
    visit '/astronauts'

    expect(page).to have_content(@mission_1)
    expect(page).to have_content(@mission_2)
    expect(page).to have_content(@mission_3)

  end


end
