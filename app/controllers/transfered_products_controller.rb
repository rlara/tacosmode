class TransferedProductsController < ApplicationController
  # GET /transfered_products
  # GET /transfered_products.json
  def index
    @transfered_products = TransferedProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transfered_products }
    end
  end

  # GET /transfered_products/1
  # GET /transfered_products/1.json
  def show
    @transfered_product = TransferedProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transfered_product }
    end
  end

  # GET /transfered_products/new
  # GET /transfered_products/new.json
  def new
    @transfered_product = TransferedProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @transfered_product }
    end
  end

  # GET /transfered_products/1/edit
  def edit
    @transfered_product = TransferedProduct.find(params[:id])
  end

  # POST /transfered_products
  # POST /transfered_products.json
  def create
    @transfered_product = TransferedProduct.new(params[:transfered_product])

    respond_to do |format|
      if @transfered_product.save
        format.html { redirect_to @transfered_product, notice: 'Transfered product was successfully created.' }
        format.json { render json: @transfered_product, status: :created, location: @transfered_product }
      else
        format.html { render action: "new" }
        format.json { render json: @transfered_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /transfered_products/1
  # PUT /transfered_products/1.json
  def update
    @transfered_product = TransferedProduct.find(params[:id])

    respond_to do |format|
      if @transfered_product.update_attributes(params[:transfered_product])
        format.html { redirect_to @transfered_product, notice: 'Transfered product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @transfered_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transfered_products/1
  # DELETE /transfered_products/1.json
  def destroy
    @transfered_product = TransferedProduct.find(params[:id])
    @transfered_product.destroy

    respond_to do |format|
      format.html { redirect_to transfered_products_url }
      format.json { head :no_content }
    end
  end
end
