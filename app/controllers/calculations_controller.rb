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

def flex_pmt
# 
# @years  @pal @apr @pmt.
#
# @input = params["x"].to_f
#
# @pmt = @input ** 0.5

  render("calculations/flex_pmt.html.erb")
end

end
