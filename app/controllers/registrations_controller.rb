class RegistrationsController <  Devise::RegistrationsController
	private

	def sign_up_params
		params.require(:user).permit(:rut_gestor, :primer_nombre, :segundo_nombre, :apellido_paterno, :apellido_materno, :sexo, :telefono_fijo, :telefono_movil, :email, :password, :password_confirmation)
	end

	def account_update_params
		params.require(:user).permit(:rut_gestor, :primer_nombre, :segundo_nombre, :apellido_paterno, :apellido_materno, :sexo, :telefono_fijo, :telefono_movil, :email, :password, :password_confirmation,:current_password)
	end
end
