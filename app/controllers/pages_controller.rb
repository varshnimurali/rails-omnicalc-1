class PagesController < ApplicationController
  def home
    render({ :template => "templates/home" })
  end

  def square
    render({ :template => "templates/square" })
  end

  def square_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2

    render({ :template => "templates/square_results" })
  end

  def square_root
    render({ :template => "templates/square_root" })
  end

  def square_root_results
    @the_num_2 = params.fetch("users_number_2").to_f
    @the_result_2 = @the_num_2 ** 0.5
  
    render({ :template => "templates/square_root_results" })
  end

  def payment
    render({ :template => "templates/payment" })
  end

  def payment_results
    @APR = params.fetch("users_APR").to_f / 100 / 12
    @Yrs = params.fetch("users_years").to_f * 12
    @Principal = params.fetch("users_principal").to_f
    @Numerator = @APR * @Principal
    @Denominator = 1 - (1+@APR)**(-@Yrs)
    @PMT = @Numerator / @Denominator

    render({ :template => "templates/payment_results" })
  end

  def random
    render({ :template => "templates/random" })
  end

  def random_results
    @Minimum = params.fetch("min").to_f
    @Maximum = params.fetch("max").to_f
    @Random_Num = rand(@Minimum..@Maximum)
  
    render({ :template => "templates/random_results" })
  end
end
