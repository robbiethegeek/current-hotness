require "test_helper"

describe Community do
  let(:community) { Community.new }

  it "must be valid" do
    community.must_be :valid?
  end
end
