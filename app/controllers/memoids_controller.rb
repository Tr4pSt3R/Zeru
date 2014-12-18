class MemoidsController < ApplicationController
  def new
    @memoid = Memoid.new
  end
  
  def create
    @memoid = Memoid.new memoid_attributes
    
    if @memoid.save 
      redirect_to @memoid, notice: "You will see me again in 1 day"
    else
      render :new
    end
  end

  def show; end

  private
    def memoid_attributes 
      params.require(:memoid).permit(:content)
    end
end
