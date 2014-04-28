class OperationItemsController < ApplicationController
  before_action :set_operation_item, only: [:show, :edit, :update, :destroy]

  # GET /operation_items
  # GET /operation_items.json
  def index
    @operation_items = OperationItem.all
  end

  # GET /operation_items/1
  # GET /operation_items/1.json
  def show
  end

  # GET /operation_items/new
  def new
    @operation_item = OperationItem.new
  end

  # GET /operation_items/1/edit
  def edit
  end

  # POST /operation_items
  # POST /operation_items.json
  def create
    @operation_item = OperationItem.new(operation_item_params)

    @operation = Operation.where(:id => params[:operation_id])

    respond_to do |format|
      if @operation_item.save
        if params[:save_add]
          format.html { redirect_to new_operation_item_path(:operation_id => @operation_item.operation_id), notice: 'Operation item was successfully created.'}
          format.json { render action: 'show', status: :created, location: @operation_item }
        else  
          format.html { redirect_to :action => :index, notice: 'Operation item was successfully created.' }
          format.json { render action: 'show', status: :created, location: @operation_item }
        end
        format.html { render action: 'new' }
        format.json { render json: @operation_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operation_items/1
  # PATCH/PUT /operation_items/1.json
  def update
    respond_to do |format|
      if @operation_item.update(operation_item_params)
        format.html { redirect_to :action => :index, notice: 'Operation item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @operation_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operation_items/1
  # DELETE /operation_items/1.json
  def destroy
    @operation_item.destroy
    respond_to do |format|
      format.html { redirect_to operation_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operation_item
      @operation_item = OperationItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operation_item_params
      params.require(:operation_item).permit(:budget_category_id, :article_id, :operation_id, :title, :amount, :amount_type)
    end
end
