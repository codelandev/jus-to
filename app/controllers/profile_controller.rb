class ProfileController < ApplicationController
  def edit
    authenticate_user!
    @profile = current_user.profile
  end

  def update
    authenticate_user!
    @profile = current_user.profile
    @profile.assign_attributes(profile_params)
    @profile.save(validate: false)

    if @profile.valid?
      redirect_to profile_path, notice: 'Perfil atualizado com sucesso'
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name,
                                    :address_zip_code,
                                    :address_street,
                                    :address_number,
                                    :address_complement,
                                    :address_city,
                                    :address_state,
                                    :cpf,
                                    :rg,
                                    :phone_number,
                                    :phone_area_code,
                                    :alternative_phone_number,
                                    :alternative_phone_area_code)
  end
end
