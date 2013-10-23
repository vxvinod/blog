class OpensrcController < ApplicationController
  def home
  	 @behatos = Behat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @behatoss }
    end
  end

  def about
  end

  def content
  	 @behat = Behat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @behat }
    end
  end

  def contact
  end
end
