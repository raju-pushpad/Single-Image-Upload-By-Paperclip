class WelcomeController < ApplicationController
  def index
  	@user=User.new
  end
  def create
  @user = User.create(user_params)
  @user.save
  redirect_to welcome_path(@user)
end
def show
	@user=User.find(params[:id])
	end

private

def user_params
  params.require(:user).permit(:name, :image)
end

end
