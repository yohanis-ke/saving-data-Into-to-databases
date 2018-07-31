gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')


class Contact

    @@contacts = []
    @@id = 1


  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1 # this way the next contact will get a different id

  end


    # This method should call the initializer,
    # store the newly created contact, and then return it

  def self.create(first_name, last_name, email, note)
    new_contact = self.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact

  end


  # This method should return all of the existing contacts
  def self.all
  @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find

  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update

  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty

  def self.find_by(id)
    @@contacts.each do |a|
      # a.include?(id)
      if a.id == id
      puts a
     end
    end
   puts "This contact is not in the list"
  end


  # This method should delete all of the contacts
  def self.delete_all

  end

  def full_name
   "#{@first_name} #{@last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete

  end

  def email
    @email
  end

  def note
    @note
  end

  def note=(note)
    @note = note
  end

  def id
   @id
  end




  # Feel free to add other methods here, if you need them.

end

contact=Contact.create('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')
# contact.note = 'Loves HTML & CSS'

# puts contact.id
# puts contact.full_name
# puts contact.email
# puts contact.note
p Contact.all

puts "enter your id to earch"
find_id=gets.chomp.to_i
Contact.find_by(find_id)
