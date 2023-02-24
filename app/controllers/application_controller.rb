class ApplicationController < ActionController::Base

def blank_square_form
  render({ :template => "square_form.html.erb"})

end

def calculate_square
   @num = params.fetch("calc_value").to_f
   @square_of_num = @num * @num 
   render({ :template => "square_results.html.erb"})


end

def blank_random
  render({ :template => "random_form.html.erb"})

end


def calculate_random
  
  @lower = params.fetch("user_min").to_f
  @upper = params.fetch("user_max").to_f
  @result = rand(@lower..@upper)
  render({ :template => "random_results.html.erb"})
end

def blank_sqrt
  render({ :template => "sqrt_form.html.erb"})

end

def calculate_sqrt
  @num = params.fetch("calc_value").to_f
  @sqrt_of_num = @num ** 0.5 
  render({ :template => "sqrt_results.html.erb"})

end

def blank_payment
  render({ :template => "sqrt_form.html.erb"})

end

def calculate_payment

  @apr = params.fetch("apr").to_f
  @monthly_apr = @apr / 12

  @term_month = params.fetch("term").to_f * 12
  @principal = params.fetch("principal").to_f
  @monthly_payment = (@monthly_apr * @principal) / (1 - ((1 + @term_month) ** -@term_month)) 

  render({ :template => "sqrt_results.html.erb"})

end


end
