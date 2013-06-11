class OrdersController < ApplicationController
  def index
    @orders = Order.all

    respond_to do |format|
      format.html
      format.json { render json: @orders}
    end
  end

  def show
    begin
      @order = Order.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error "Attempt to access invalid order #{params[:id]}"
      redirect_to home_url, notice: "invalid order"
    else
      respond_to do |format|
        format.html
        format.json { render json: @order}
      end
    end
  end

  def new
    @order = Order.new

    respond_to do |format|
      format.html
      format.json { render json: @order}
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: "Order was created"}
        format.json { render json: @order, status: :created, locatioin: @order}
      else
        format.html { render :new}
        format.json { render json: @order.errors, status: :unprocessable_entity}
      end
    end
  end

  def update
    @order = Order.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to @order, notice: 'order is created'}
        format.json { head :no_content}
      else
        format.html { render :edit}
        format.json { render json: @order.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @order = current_order
    @order.destroy
    session[:order_id] = nil

    respond_to do |format|
      format.html { redirect_to home_url, notice: 'You empty your cart' }
      format.json { head :ok}
    end
  end
end
