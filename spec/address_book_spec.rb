require_relative '../models/address_book'


 RSpec.describe AddressBook do
    let :book { AddressBook.new }
    
   describe "attributes" do
     it "responds to entries" do
       expect(book).to respond_to(:entries)
     end
     
     
     it "initializes entries as an array" do
       expect(book.entries).to be_an(Array)
     end
 
     it "initializes entries as empty" do
       expect(book.entries.size).to eq(0)
     end
   end
 
  context 'instance methods' do
    before :each do
        book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
        puts "inside before for both add and remove"
    end
    
    describe "#add_entry" do
      before :each do
          puts "inside add entry before block"
      end
      
     it "adds only one entry to the address book" do
       expect(book.entries.size).to eq(1)
     end
 
     it "adds the correct information to entries" do
       new_entry = book.entries[0]
 
       expect(new_entry.name).to eq('Ada Lovelace')
       expect(new_entry.phone_number).to eq('010.012.1815')
       expect(new_entry.email).to eq('augusta.king@lovelace.com')
     end
    end
       
    describe "#remove_entry" do
        before :each do
          puts "inside remove entry before block"
      end
      it "removes only one entry from the address book" do
          puts "removal test for 1 entry"
          book.remove_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
          expect(book.entries.size).to eq(0)
      end
       
      it "removes the correct info from entries" do
          book.remove_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
          removed_entry = book.entries[0]
          
          expect(removed_entry).to be_nil
          expect(removed_entry).to be_nil
          expect(removed_entry).to be_nil
      end
    end
  end
end