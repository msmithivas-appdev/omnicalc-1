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
  
  @num = params.fetch("calc_value").to_f
   @rand_num =  
  render({ :template => "random_results.html.erb"})
end
