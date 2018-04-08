class Backoffice::SendMailController < Backoffice::ApplicationAdminController
  def edit
    @admin = Admin.find(params[:id])
  end

  def create
  end
end
