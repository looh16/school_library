require './app'
require './data/data_read'
require './data/data_write'

class Main
  def run
    @app = App.new
    @persons = read_person
    @books = read_book
    @rentals = read_rentals
    options
  end

  def options
    print 'Welcome to School Library App!'
    while @output != 7
      print "\nPlease choose an option by entering a number: \n\n"
      print "1 - List all books\n"
      print "2 - List all people\n"
      print "3 - Create a person\n"
      print "4 - Create a book\n"
      print "5 - Create a rental\n"
      print "6 - List all rentals for a given person id\n"
      print "7 - Exit\n"
      @app.start_app
    end
  end
end

main = Main.new
main.run
