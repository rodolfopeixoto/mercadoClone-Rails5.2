class Backoffice::AdminsController < Backoffice::ApplicationAdminController

  before_action :set_admin, only: [:edit, :update, :destroy]
  after_action :verify_authorized, only: [:new, :destroy]
  after_action :verify_policy_scoped, only: :index

  def index
    @admins = policy_scope(Admin)
  end

  def new
    @admin = Admin.new
    authorize @admin
  end

  def create
    @admin = Admin.new(params_admin)
    
    if @admin.save!
      redirect_to backoffice_admins_path, notice: "O Administrador (#{@admin.email})"
    else
      render :new
    end
  end

  def edit
  end

  def update
    password              = params[:admin][:password]
    password_confirmation = params[:admin][:password_confirmation]
    
    if password.blank? && password_confirmation.blank?
      params[:admin].delete(:password) 
      params[:admin].delete(:password_confirmation)
    end  
    
    if @admin.update(params_admin)
      AdminMailer.update_email(current_admin, @admin).deliver_now!
      redirect_to backoffice_admins_path
      flash[:notice] = "O Administrador #{@admin.email} foi criado com sucesso."
    else
      render :edit
    end
  end

  def destroy

    authorize @admin
    admin_email = @admin.email

    if @admin.destroy
      redirect_to backoffice_admins_path
      flash[:notice] = "O Administrador #{admin_email} foi deletado com sucesso."
    else
      render :index 
    end
  end

  private

  def set_admin
    @admin = Admin.find(params[:id])
  end

  def params_admin
    params.require(:admin).permit(policy(@admin).permitted_attributes)
  end

end
