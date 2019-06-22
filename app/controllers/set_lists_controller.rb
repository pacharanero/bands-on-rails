class SetListsController < ApplicationController
  before_action :set_set_list, only: [:show, :edit, :update, :destroy]

  # GET /set_lists
  # GET /set_lists.json
  def index
    @set_lists = SetList.all
  end

  # GET /set_lists/1
  # GET /set_lists/1.json
  def show
  end

  # GET /set_lists/new
  def new
    @set_list = SetList.new
  end

  # GET /set_lists/1/edit
  def edit
  end

  # POST /set_lists
  # POST /set_lists.json
  def create
    @set_list = SetList.new(set_list_params)

    respond_to do |format|
      if @set_list.save
        format.html { redirect_to @set_list, notice: 'Set list was successfully created.' }
        format.json { render :show, status: :created, location: @set_list }
      else
        format.html { render :new }
        format.json { render json: @set_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_lists/1
  # PATCH/PUT /set_lists/1.json
  def update
    respond_to do |format|
      if @set_list.update(set_list_params)
        format.html { redirect_to @set_list, notice: 'Set list was successfully updated.' }
        format.json { render :show, status: :ok, location: @set_list }
      else
        format.html { render :edit }
        format.json { render json: @set_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_lists/1
  # DELETE /set_lists/1.json
  def destroy
    @set_list.destroy
    respond_to do |format|
      format.html { redirect_to set_lists_url, notice: 'Set list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set_list
      @set_list = SetList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_list_params
      params.require(:set_list).permit(:title, :notes, :tags)
    end
end
