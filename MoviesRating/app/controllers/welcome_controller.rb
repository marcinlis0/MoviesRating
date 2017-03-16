class WelcomeController < ApplicationController

  def index
  end

  def contact
    render :contact
  end

  def about
    render 'welcome/about'
  end



end
