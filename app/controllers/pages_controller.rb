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
end
