require 'spec_helper'

describe 'main routing' do

  it 'route to home page' do
    expect(get("/")).to route_to("static#index")
  end
end