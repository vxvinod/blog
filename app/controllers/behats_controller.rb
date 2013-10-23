class BehatsController < ApplicationController
  # GET /behats
  # GET /behats.json
  def index
    @behats = Behat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @behats }
    end
  end

  # GET /behats/1
  # GET /behats/1.json
  def show
    @behat = Behat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @behat }
    end
  end

  # GET /behats/new
  # GET /behats/new.json
  def new
    @behat = Behat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @behat }
    end
  end

  # GET /behats/1/edit
  def edit
    @behat = Behat.find(params[:id])
  end

  # POST /behats
  # POST /behats.json
  def create
    @behat = Behat.new(params[:behat])

    respond_to do |format|
      if @behat.save
        format.html { redirect_to @behat, notice: 'Behat was successfully created.' }
        format.json { render json: @behat, status: :created, location: @behat }
      else
        format.html { render action: "new" }
        format.json { render json: @behat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /behats/1
  # PUT /behats/1.json
  def update
    @behat = Behat.find(params[:id])

    respond_to do |format|
      if @behat.update_attributes(params[:behat])
        format.html { redirect_to @behat, notice: 'Behat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @behat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /behats/1
  # DELETE /behats/1.json
  def destroy
    @behat = Behat.find(params[:id])
    @behat.destroy

    respond_to do |format|
      format.html { redirect_to behats_url }
      format.json { head :no_content }
    end
  end
end
