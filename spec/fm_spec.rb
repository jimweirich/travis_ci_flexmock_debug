require 'rspec/given'

# 1

RSpec.configure do |config|
  config.mock_with :flexmock
end

describe "Using FlexMock under RSpec" do

  When { m.foobar }

  context "when using mocks" do
    Given(:m) { flexmock("obj") }
    Given { m.should_receive(:foobar => "HI").once }
    Then { }
  end

  context "when using spies" do
    Given(:m) { flexmock("obj", :foobar => "HI") }
    Then { m.should have_received(:foobar).once }
  end

end
