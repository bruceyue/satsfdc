class SfjobsController < ApplicationController
  # GET /sfjobs
  # GET /sfjobs.json
  def index
    @sfjobs = Sfjob.paginate(page: params[:page], per_page: 5).order('created_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sfjobs }
    end
  end

  # GET /sfjobs/1
  # GET /sfjobs/1.json
  def show
    @sfjob = Sfjob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sfjob }
    end
  end

  # GET /sfjobs/new
  # GET /sfjobs/new.json
  def new
    @sfjob = Sfjob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sfjob }
    end
  end

  # GET /sfjobs/1/edit
  def edit
    @sfjob = Sfjob.find(params[:id])
  end

  # POST /sfjobs
  # POST /sfjobs.json
  def create
    @sfjob = Sfjob.new(params[:sfjob])

    respond_to do |format|
      if @sfjob.save
        format.html { redirect_to @sfjob, notice: 'Sfjob was successfully created.' }
        format.json { render json: @sfjob, status: :created, location: @sfjob }
      else
        format.html { render action: "new" }
        format.json { render json: @sfjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sfjobs/1
  # PUT /sfjobs/1.json
  def update
    @sfjob = Sfjob.find(params[:id])

    respond_to do |format|
      if @sfjob.update_attributes(params[:sfjob])
        format.html { redirect_to @sfjob, notice: 'Sfjob was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sfjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sfjobs/1
  # DELETE /sfjobs/1.json
  def destroy
    @sfjob = Sfjob.find(params[:id])
    @sfjob.destroy

    respond_to do |format|
      format.html { redirect_to sfjobs_url }
      format.json { head :no_content }
    end
  end
end
