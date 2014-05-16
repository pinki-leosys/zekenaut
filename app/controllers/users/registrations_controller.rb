class Users::RegistrationsController < Devise::RegistrationsController
 
  def new
    @user = User.new
    @company = Company.new
    super
  end

  def create
    @user = User.new(params[:user])    
    @company= Company.new(params[:company])
    @company.save
    @user.category_id = params[:category][:category_id]
    @user.company_id = @company.id
    @user.save
    respond_to do |format|
        if params[:user]
          redirect_to(root_url, :notice => 'Sign up successfully')
          format.json { render json: @user.errors, status: :unprocessable_entity }
        else
          format.html { render action: "new" }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end   
    end
  end

end 