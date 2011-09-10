class HomeController < ApplicationController
  def index

  	@devices = Device.all
  	@kernels = Kern.all


  end

end
