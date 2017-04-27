class CalculationsController < ApplicationController

def flex_square

@input = params["x"].to_f

@square = @input ** 2

  render("calculations/flex_square.html.erb")
end

def flex_root

@input = params["x"].to_f

@root = @input ** 0.5

  render("calculations/flex_root.html.erb")
end

def square_form
  render("claculations/square_form.html.erb")
end
end
