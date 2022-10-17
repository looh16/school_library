require_relative 'app'

class Main
  def run
    app = App.new
    app.options
  end
end

main = Main.new
main.run
