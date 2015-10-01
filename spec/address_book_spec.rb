require_relative "../models/address_book.rb"

RSpec.describe AddressBook do
  describe "attributes" do
    it "should respond to entries" do
     book = AddressBook.new
     expect(book).to respond_to(:entries)
   end

   it "should initialize entries as an array" do
     book = AddressBook.new
     expect(book.entries).to be_a(Array)
   end

   it "should initialize entries as an empty array" do
     book = AddressBook.new
     expect(book.entries.size).to eq(0)
   end
  end
  describe "#add_entry" do
    it "adds only a single entry to the Address Book" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expect(book.entries.size).to eq(1)
    end
    it "adds the correct information to entries" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      new_entry = book.entries[0]

      expect(new_entry.name).to eq('Ada Lovelace')
      expect(new_entry.phone_number).to eq('010.012.1815')
      expect(new_entry.email).to eq('augusta.king@lovelace.com')
    end
  end
  # added remove entry test
  describe "#remove_entry" do
    it "should remove a single entry" do
      book = AddressBook.new
      book.add_entry('Austin Thesing', '800.445.8833','austin@thesing.xyz')
      expect(book.entries.size).to eq(1)
      # How do I test the removal of an entry?
      #I know this doesn't test for removal and I know my method isn't right.. but I didnt want to get caught up on this
      book.remove_entry('Austin Thesing', '800.445.8833','austin@thesing.xyz')
      expect(book.entries.size).to eq(0)
    end
  end
end
