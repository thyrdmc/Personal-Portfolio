class PortfoliosController < ApplicationController
    def index
        @portfolio_items = Portfolio.all
    end

    def new
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
    
        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to portfolios_path, notice: "Portfolio item was successfully created." }
            format.json { render :show, status: :created, location: @portfolio_item }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
          end
        end
      end

    def edit
        @portfolio_item = Portfolio.find(params[:id])
    end 

    def update
      @portfolio_item = Portfolio.find(params[:id])
      
      respond_to do |format|
        if @blog.update(params.require(:portfolio).permit(:title, :subtitle, :body))
          format.html { redirect_to blog_url(@blog), notice: "The record successfully updated." }
          format.json { render :show, status: :ok, location: @blog }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @blog.errors, status: :unprocessable_entity }
        end
      end
    end

end
