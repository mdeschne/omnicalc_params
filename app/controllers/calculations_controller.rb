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

@years =params["number_of_years"].to_f
@principal = params["present_value"].to_f
@apr = params["basis_points"].to_f

@apr = @apr/100
apr =  @apr.round(2)/100
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

def square_root_form
  render("calculations/square_root_form.html.erb")
end

def square_root

  @input = params["x"].to_f

  @root = @input ** 0.5

    render("calculations/square_root.html.erb")
end

def payment_form
  render("calculations/payment_form.html.erb")
end

def payment

  @years =params["noy"].to_f
  @principal = params["pv"].to_f
  @apr = params["bp"].to_f

  @apr = @apr
  apr =  @apr.round(2)/100
  # rate = ((1+(apr/12))**12)-1
  rate = apr/12
  months = @years*12
  pal =  @principal

  pmt = (pal*rate)/(1-(1+rate)**(-months))


    @pmt = pmt.round(2)


    render("calculations/payment.html.erb")
end

def random_form
  render("calculations/random_form.html.erb")
end

def random

@min = params["user_min"].to_f
@max = params["user_max"].to_f


@rand = rand((@max-@min)) + @min

  render("calculations/random.html.erb")
end

end
