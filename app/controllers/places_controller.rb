class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
    @entries = @place.entries
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new

    @place["name"] = params["place"]["name"]

    @place.save

    redirect_to "/places"
  end

  def edit
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })
    # render view with edit Place form
  end

  def update
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })

    # assign user-entered form data to Place's columns
    @place["name"] = params["name"]

    # save Place row
    @place.save

    # redirect user
    redirect_to "/places"
  end

  def destroy
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })

    # destroy Place row
    @place.destroy

    # redirect user
    redirect_to "/places"
  end

end
