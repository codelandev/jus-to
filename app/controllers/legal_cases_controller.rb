class LegalCasesController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def index
    @cases = current_user.legal_cases
    authorize(@cases)
  end

  def show
    @case = current_user.legal_cases.find(params[:id])
    authorize(@case)
  end

  def new
    @case = current_user.legal_cases.new
    authorize(@case)
  end

  def create
    @case = current_user.legal_cases.new(legal_case_params)
    authorize(@case)
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

  def user_not_authorized(exception)
    if current_user.profile.valid?
      super
    else
      redirect_to profile_path, alert: 'Antes de prosseguir, complete seu perfil'
    end
  end
end
