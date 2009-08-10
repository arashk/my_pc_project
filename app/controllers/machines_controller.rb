class MachinesController < ApplicationController

  before_filter :set_session_variable
  before_filter :login_required, :only => [:report, :show]
  # before_filter :login_required, :except => [:index]
  # /machines/index
  # /machines
  def index
    @message = "Machines rule!"
    @message_from_params = params[:id]
    @name = params[:name]
  end

  # /machines/show/robot
  def show
    if params[:id] == 'robot'
      render :action => 'robot'
    end
    #MAGIC DEDAULT render :action => "show"
  end

  def show_with_explicit_template
    render 'shared/explicit'
  end

  def show_with_redirect
    # redirect_to 'http://peepcode.com'
    # redirect_to 'machines/show/robot'
    redirect_to machines_url(:action => 'show', :id => 'robot')
  end

  def report
  end

  # /machines/products.xml
  # /machines/products.html # Also the default
  # /machines/products.png  # With special declaration in env.rb
  def products
    @products = ['ninja', 'fish', 'chauffeur']
    respond_to do |format|
      format.html # render html version
      format.xml {
        # NOTE This only works for ActiveRecord objects
        # render :xml => @products.to_xml
        render :file => "machines/products.rxml", :use_full_path => true
      }
    end
  end

  private

  def login_required
    if session[:name] == "Roger"
      render :text => "Sorry! You are not allowed to view this."
      # redirect_to '/users/login'
      return false
    end
    true
  end

  def set_session_variable
    if params[:name]
      session[:name] = params[:name]
    end    
  end

end

