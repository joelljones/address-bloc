# require_relative method loads files using a relative path
require_relative '../models/entry'
# #1 standard first line of an RSpec test file, says file is a spec file and tests Entry
RSpec.describe Entry do
  # #2 describe gives our test structure, says the specs test the Entry attributes
  describe "attributes" do
   let(:entry) { Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com') }
    # #3 Separate individual tests using the it method. Each it represents a unique test.
    it "responds to name" do
      # #4 Each RSpec test ends with one or more expect method, which is used to declare the expectations for the test. If those expectations are met, the test passes, if they are not, it fails.
      expect(entry).to respond_to(:name)
    end

    it "reports its name" do
      expect(entry.name).to eq('Ada Lovelace')
    end

    it "responds to phone number" do
      expect(entry).to respond_to(:phone_number)
    end

    it "reports its phone_number" do
      expect(entry.phone_number).to eq('010.012.1815')
    end

    it "responds to email" do
      expect(entry).to respond_to(:email)
    end

    it "reports its email" do
      expect(entry.email).to eq('augusta.king@lovelace.com')
    end
  end

  # #5 new describe block separates the to_s test from the initializer tests & the # means it's an instance method
  describe "#to_s" do
    it "prints an entry as a string" do
      entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
      # #6 eq is used to check that to_s returns a string equal to expected_string.
      expect(entry.to_s).to eq(expected_string)
    end
  end
end
