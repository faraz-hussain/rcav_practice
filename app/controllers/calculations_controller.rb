class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params["number"].to_i
    @result = @number ** 2
  end

  def sqrt
    @number = params["number"].to_i
    @result = Math.sqrt(@number)
  end

  def random
    @number1 = params["number1"].to_i
    @number2 = params["number2"].to_i

    if @number1 < @number2
      @result = rand(@number1..@number2)
    end

    if @number2 < @number1
      @result = rand(@number2..@number1)
    end
  end

  def payment
    @apr = params[:annual_percentage_rate].to_f/100
    @years = params[:number_of_years].to_i
    @principal = params[:principal_value].to_f

    # ================================================================================
    # Your code goes below.
    # The annual percentage rate the user input is in the decimal @apr.
    # The number of years the user input is in the integer @years.
    # The principal value the user input is in the decimal @principal.
    # ================================================================================

    @result = @principal * (@apr/1200) /  (1-(1+@apr/1200)**-(12*@years))
  end
end
