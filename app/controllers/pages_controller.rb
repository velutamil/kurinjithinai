class PagesController < ApplicationController
  def dashboard
    if params[:id].present?
      @products = Product.where(product_category_id: params[:id].to_i)
    else
    @products = Product.all
    end
  end

  def login
  end

  def contact
  end

  def about
  end

  def register
  end
  def contact
  end

  def login_attempt
    username = params[:username_or_email]
    password = params[:password]
    @user = Customer.find_by(email_id: username) if username.include? "@"
    @user = Customer.find_by(first_name: username) unless username.include? "@"
    if password == @user.password
      session[:user_id]= @user.id
      redirect_to pages_dashboard_path
    else
      redirect_to pages_login_path
    end
  end


  def product_view

  end

  
  def logout
    session[:user_id]=nil
    redirect_to pages_dashboard_path
  end
end
