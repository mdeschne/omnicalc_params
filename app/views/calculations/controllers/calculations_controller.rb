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

@years = params["x"].to_f
@principal = params["y"].to_f
@apr = params["z"].to_f

apr =  @apr
apr = apr/100
# rate = ((1+(apr/12))**12)-1
rate = apr/12
months = @years*12
pal =  @principal

pmt = (pal*rate)/(1-(1+rate)**(-months))

  @pmt = pmt.round(2)

  render("calculations/flex_pmt.html.erb")
end

def flex_rand

@min = params["min"].to_f
@max = params["max"].to_f


@rand = rand((@max-@min)) + @min

  render("calculations/flex_rand.html.erb")
end


def square_form
  render("calculations/square_form.html.erb")
end

def square

  @input = params["x"].to_f

  @square = @input ** 2

    render("calculations/square.html.erb")
end

end
