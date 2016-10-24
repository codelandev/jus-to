class MessagesController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized

  def create
    @case = current_user.legal_cases.find(params[:case_id])
    @message = @case.messages.new(message_params)
    @message.author = current_user

    authorize @message

    if @message.save
      flash[:notice] = 'Mensagem enviada com sucesso'
    else
      flash[:alert] = 'Ops, algo deu errado'
    end
    redirect_to legal_case_path(@case)
  end

  private
  def message_params
    params.require(:message).permit([:content])
  end
end
