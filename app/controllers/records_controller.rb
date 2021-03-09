class RecordsController < ApplicationController
  def index
  	@records = Record.all
  end

	def new
    @records = Record.new
  end

   def create
    @records = Record.new(record_params)

    if @records.save
      redirect_to @records
    else
      render :new
    end
  end

  def show
    @records = Record.find(params[:id])
  end

  def edit
    @records = Record.find(params[:id])
  end

  def update
    @records = Record.find(params[:id])

    if @records.update(record_params)
      redirect_to @records
    else
      render :edit
    end
  end

  def destroy
    @records = Record.find(params[:id])
    @records.destroy
    redirect_to root_path
  end


  private
  def record_params
    params.require(:record).permit(:first_name, :last_name, :contact_no, :address)
  end
end
