class KernsController < ApplicationController
  # GET /kerns
  # GET /kerns.json
  def index
    @kerns = Kern.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kerns }
    end
  end

  # GET /kerns/1
  # GET /kerns/1.json
  def show
    @kern = Kern.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kern }
    end
  end

  # GET /kerns/new
  # GET /kerns/new.json
  def new
    @kern = Kern.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kern }
    end
  end

  # GET /kerns/1/edit
  def edit
    @kern = Kern.find(params[:id])
  end

  # POST /kerns
  # POST /kerns.json
  def create
    @kern = Kern.new(params[:kern])

    respond_to do |format|
      if @kern.save
        format.html { redirect_to @kern, notice: 'Kern was successfully created.' }
        format.json { render json: @kern, status: :created, location: @kern }
      else
        format.html { render action: "new" }
        format.json { render json: @kern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kerns/1
  # PUT /kerns/1.json
  def update
    @kern = Kern.find(params[:id])

    respond_to do |format|
      if @kern.update_attributes(params[:kern])
        format.html { redirect_to @kern, notice: 'Kern was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @kern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kerns/1
  # DELETE /kerns/1.json
  def destroy
    @kern = Kern.find(params[:id])
    @kern.destroy

    respond_to do |format|
      format.html { redirect_to kerns_url }
      format.json { head :ok }
    end
  end
end
