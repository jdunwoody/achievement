class ProgressionsController < ApplicationController
  # GET /progressions
  # GET /progressions.json
  def index
    @progressions = Progression.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @progressions }
    end
  end

  # GET /progressions/1
  # GET /progressions/1.json
  def show
    @progression = Progression.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @progression }
    end
  end

  # GET /progressions/new
  # GET /progressions/new.json
  def new
    @progression = Progression.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @progression }
    end
  end

  # GET /progressions/1/edit
  def edit
    @progression = Progression.find(params[:id])
  end

  # POST /progressions
  # POST /progressions.json
  def create
    @progression = Progression.new(params[:progression])

    respond_to do |format|
      if @progression.save
        format.html { redirect_to @progression, notice: 'Progression was successfully created.' }
        format.json { render json: @progression, status: :created, location: @progression }
      else
        format.html { render action: "new" }
        format.json { render json: @progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /progressions/1
  # PUT /progressions/1.json
  def update
    @progression = Progression.find(params[:id])

    respond_to do |format|
      if @progression.update_attributes(params[:progression])
        format.html { redirect_to @progression, notice: 'Progression was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progressions/1
  # DELETE /progressions/1.json
  def destroy
    @progression = Progression.find(params[:id])
    @progression.destroy

    respond_to do |format|
      format.html { redirect_to progressions_url }
      format.json { head :ok }
    end
  end
end
