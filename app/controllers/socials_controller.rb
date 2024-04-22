class SocialsController < ApplicationController
  def index
    matching_socials = Social.all

    @list_of_socials = matching_socials.order({ :created_at => :desc })

    render({ :template => "socials/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_socials = Social.where({ :id => the_id })

    @the_social = matching_socials.at(0)

    render({ :template => "socials/show" })
  end

  def create
    the_social = Social.new
    the_social.telegram = params.fetch("query_telegram")
    the_social.twitter = params.fetch("query_twitter")

    if the_social.valid?
      the_social.save
      redirect_to("/socials", { :notice => "Social created successfully." })
    else
      redirect_to("/socials", { :alert => the_social.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_social = Social.where({ :id => the_id }).at(0)

    the_social.telegram = params.fetch("query_telegram")
    the_social.twitter = params.fetch("query_twitter")

    if the_social.valid?
      the_social.save
      redirect_to("/socials/#{the_social.id}", { :notice => "Social updated successfully."} )
    else
      redirect_to("/socials/#{the_social.id}", { :alert => the_social.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_social = Social.where({ :id => the_id }).at(0)

    the_social.destroy

    redirect_to("/socials", { :notice => "Social deleted successfully."} )
  end
end
