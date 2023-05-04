require_relative './modules/menu'
require_relative './app'

class Main
  include Menu

  puts " \n Welcome to the catalog"
  app = App.new
  app.run
end

Main
