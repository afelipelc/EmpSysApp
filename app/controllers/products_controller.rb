class ProductsController < ApplicationController
  before_action :authenticate_employee!, :except => [:show]
  load_and_authorize_resource
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    if params[:categoria].nil? || params[:categoria] == "seleccionar" || params[:categoria] == "todas"
      @products = Product.all
    else
      @products = Product.where("categoria = ?", Product.categoria[params[:categoria]])
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    #redirect_to :back, :alert => "Access denied."
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, sucess: 'El Producto fue registrado correctamente.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, sucess: 'El Producto fue actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy    
    # @product.destroy
    respond_to do |format|
       flash[:info] = 'Un producto no se puede eliminar. Cambie el Estado a No activo.'
       format.html { render :edit }
       format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:descripcion, :precio, :categoria, :subcategoria, :noingredientes, :conbebida, :activo)
    end
end
