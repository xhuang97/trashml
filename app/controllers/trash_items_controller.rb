class TrashItemsController < ApplicationController
  before_action :set_trash_item, only: [:show, :edit, :update, :destroy]

  # GET /trash_items
  # GET /trash_items.json
  def index
    @trash_items = TrashItem.all
  end

  # GET /trash_items/1
  # GET /trash_items/1.json
  def show
  end

  # GET /trash_items/new
  def new
    @trash_item = TrashItem.new
  end

  # GET /trash_items/1/edit
  def edit
  end

  # POST /trash_items
  # POST /trash_items.json
  def create
    @trash_item = TrashItem.new(trash_item_params)

    respond_to do |format|
      if @trash_item.save
        format.html { redirect_to @trash_item, notice: 'Trash item was successfully created.' }
        format.json { render :show, status: :created, location: @trash_item }
      else
        format.html { render :new }
        format.json { render json: @trash_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trash_items/1
  # PATCH/PUT /trash_items/1.json
  def update
    respond_to do |format|
      if @trash_item.update(trash_item_params)
        format.html { redirect_to @trash_item, notice: 'Trash item was successfully updated.' }
        format.json { render :show, status: :ok, location: @trash_item }
      else
        format.html { render :edit }
        format.json { render json: @trash_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trash_items/1
  # DELETE /trash_items/1.json
  def destroy
    @trash_item.destroy
    respond_to do |format|
      format.html { redirect_to trash_items_url, notice: 'Trash item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trash_item
      @trash_item = TrashItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trash_item_params
      params.require(:trash_item).permit(:time_thrown, :correctness)
    end
end
