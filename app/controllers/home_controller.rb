class HomeController < ApplicationController

def create
@user = User.new(params[:user])
respond_to do |format|
if @user.save
format.html { redirect_to(users_url,
:notice => "User #{@user.name} was successfully created." ) }
format.xml { render :xml => @user,
:status => :created, :location => @user }
else
format.html { render :action => "new" }
format.xml { render :xml => @user.errors,
:status => :unprocessable_entity }
end
end
end

def update
@user = User.find(params[:id])
respond_to do |format|
if @user.update_attributes(params[:user])
format.html { redirect_to(users_url,
:notice => "User #{@user.name} was successfully updated." ) }
format.xml { head :ok }
else
format.html { render :action => "edit" }
format.xml { render :xml => @user.errors,
:status => :unprocessable_entity }
end
end
end

end
