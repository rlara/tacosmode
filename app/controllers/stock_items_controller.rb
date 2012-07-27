class StockItemsController < ApplicationController
  # GET /stock_items
  # GET /stock_items.json
  def index
    @stock_items = StockItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stock_items }
    end
  end

  # GET /stock_items/1
  # GET /stock_items/1.json
  def show
    @stock_item = StockItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stock_item }
    end
  end

  # GET /stock_items/new
  # GET /stock_items/new.json
  def new
    @stock_item = StockItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stock_item }
    end
  end

  # GET /stock_items/1/edit
  def edit
    @stock_item = StockItem.find(params[:id])
  end

  # POST /stock_items
  # POST /stock_items.json
  def create
    @stock_item = StockItem.new(params[:stock_item])

    respond_to do |format|
      if @stock_item.save
        format.html { redirect_to @stock_item, notice: 'Stock item was successfully created.' }
        format.json { render json: @stock_item, status: :created, location: @stock_item }
      else
        format.html { render action: "new" }
        format.json { render json: @stock_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stock_items/1
  # PUT /stock_items/1.json
  def update
    @stock_item = StockItem.find(params[:id])

    respond_to do |format|
      if @stock_item.update_attributes(params[:stock_item])
        format.html { redirect_to @stock_item, notice: 'Stock item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stock_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_items/1
  # DELETE /stock_items/1.json
  def destroy
    @stock_item = StockItem.find(params[:id])
    @stock_item.destroy

    respond_to do |format|
      format.html { redirect_to stock_items_url }
      format.json { head :no_content }
    end
  end
end
