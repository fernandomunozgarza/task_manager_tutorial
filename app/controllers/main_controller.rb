class MainController < ApplicationController
  def index
    # render('index')
  end
# the # is default
  def about
    @created_by = "fernando the goat"
    @id = params['id']
    @page = params[:page]
    #render ('about')
  end

  def hello
    redirect_to(action: 'index')
  end
end
