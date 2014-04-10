# coding: utf-8
class GistsController < ApplicationController
  # GET /gists
  # GET /gists.json
  def index
    @gists = Gist.where("count > 0").order("count DESC")
    @new_gist = Gist.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_gist }
    end
  end

  # GET /gists/1
  # GET /gists/1.json
  def show
    @gist = Gist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gist }
    end
  end

  # GET /gists/new
  # GET /gists/new.json
  def new
    @gist = Gist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gist }
    end
  end

  # GET /gists/1/edit
  def edit
    @gist = Gist.find(params[:id])
  end

  # POST /gists
  # POST /gists.json
  def create
    @gist = Gist.new(gist_params)
    @gist.count = 1

    respond_to do |format|
      if @gist.save
        format.html { redirect_to @gist, notice: 'Gist was successfully created.' }
        format.json { render json: @gist, status: :created, location: @gist }
      else
        format.html { redirect_to gists_url, notice: '未入力の項目があります。' }
        format.json { render json: @gist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gists/1
  # PUT /gists/1.json
  def update
    @gist = Gist.find(params[:id])

    respond_to do |format|
      if @gist.update_attributes(gist_params)
        format.html { redirect_to @gist, notice: 'Gist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gists/1
  # DELETE /gists/1.json
  def destroy
    @gist = Gist.find(params[:id])
    @gist.destroy

    respond_to do |format|
      format.html { redirect_to gists_url }
      format.json { head :no_content }
    end
  end

  private

    def gist_params
      params.require(:gist).permit(:gist)
    end
end
