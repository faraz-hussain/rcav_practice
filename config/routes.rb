Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square/:number/", { :controller => "calculations", :action => "square"})
  get("/square_root/:number/", { :controller => "calculations", :action => "sqrt"})
  get("/random/:number1/:number2/", { :controller => "calculations", :action => "random" })
  get("/payment/:annual_percentage_rate/:number_of_years/:principal_value/", { :controller => "calculations", :action => "payment" })
end
