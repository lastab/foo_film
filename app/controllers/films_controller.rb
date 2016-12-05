require 'csv'

class FilmsController < ApplicationController
  def index
    @result = get_film

    respond_to do |format|
      format.html
      format.xml { render :xml => @result.to_xml }
      format.json {render :json => @result.to_json}
    end
  end


  private

  def get_film
    arr_of_films = CSV.read("db/Film.csv", headers: true)
    random_row_index = rand(arr_of_films.length - 1)
    
    random_film = arr_of_films[random_row_index]

    {
      title: random_film["Title"],
      year: random_film["Year"]
    }

  end
end
