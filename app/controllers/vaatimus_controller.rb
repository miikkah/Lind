class VaatimusController < ApplicationController
  # GET /vaatimus
  # GET /vaatimus.json
  def index
    @vaatimus = Vaatimus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vaatimus }
    end
  end

  # GET /vaatimus/1
  # GET /vaatimus/1.json
  def show
    @vaatimu = Vaatimus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vaatimu }
    end
  end

  # GET /vaatimus/new
  # GET /vaatimus/new.json
  def new
    @vaatimu = Vaatimus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vaatimu }
    end
  end

  # GET /vaatimus/1/edit
  def edit
    @vaatimu = Vaatimus.find(params[:id])
  end

  # POST /vaatimus
  # POST /vaatimus.json
  def create
    @vaatimu = Vaatimus.new(params[:vaatimu])

    respond_to do |format|
      if @vaatimu.save
        format.html { redirect_to @vaatimu, notice: 'Vaatimus was successfully created.' }
        format.json { render json: @vaatimu, status: :created, location: @vaatimu }
      else
        format.html { render action: "new" }
        format.json { render json: @vaatimu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vaatimus/1
  # PUT /vaatimus/1.json
  def update
    @vaatimu = Vaatimus.find(params[:id])

    respond_to do |format|
      if @vaatimu.update_attributes(params[:vaatimu])
        format.html { redirect_to @vaatimu, notice: 'Vaatimus was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @vaatimu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vaatimus/1
  # DELETE /vaatimus/1.json
  def destroy
    @vaatimu = Vaatimus.find(params[:id])
    @vaatimu.destroy

    respond_to do |format|
      format.html { redirect_to vaatimus_index_url }
      format.json { head :ok }
    end
  end
end
