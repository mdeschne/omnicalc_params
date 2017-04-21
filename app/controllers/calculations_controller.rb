class CalculationsController < ApplicationController

def flex_square

# Parameters: {"x"=>"13"}
@input = params["x"].to_f

@square = @input ** 2
  render("calculations/flex_square.html.erb")
end
end
