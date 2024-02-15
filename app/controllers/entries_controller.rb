class EntriesController < ApplicationController

  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @entry["place_id"]})
  end

  def new
    @place = Place.find_by({ "id" => params["place_id"] })
  end

  def create
    # start with a new entry
    @entry = Entry.new

    # assign user-entered form data to Contact's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["posted_on"]

    # assign relationship between entry and Company
    @entry["place_id"] = params["place_id"]

    # save entry row
    if @entry.save
      # redirect user
       redirect_to "/places/#{@entry["place_id"]}"
       #this part below was added with ChatGPT's help after I received some errors
    else
      render :new
    end
  end

end
