class OrganizationsController < ApplicationController
  load_resource

  def new
    @organization.build_user
  end

  def create
    if @organization.save
      @organization.people << current_person
      redirect_to :root
    else
      render :new
    end
  end

  def signin
    sign_in_and_redirect(:organization, @organization)
  end

  def logout
    sign_out_and_redirect(current_organization)
  end

end
