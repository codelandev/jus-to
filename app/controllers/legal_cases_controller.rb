class LegalCasesController < ApplicationController
  before_action :authenticate_user!

  def index
    @cases = current_user.legal_cases
    authorize(@cases)
  end

  def show
    @case = current_user.legal_cases.find(params[:id])
  end

  def new
    @case = current_user.legal_cases.new
  end

  def create
    @case = current_user.legal_cases.new(legal_case_params)
    if @case.save
      redirect_to @case
    else
      render :new
    end
  end

  private
  def legal_case_params
    attributes = %i(subject company description)
    params.require(:legal_case).permit(attributes)
  end
end
