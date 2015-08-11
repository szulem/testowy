class TestController < ApplicationController

	layout false

  def index
  	# to jest odwołanie do pliku index.html.erb
  	@testowa = "Witam w kursie RoR"
  	@imiona = ["ala", "ewa", "ola"]
  	@id = params[:id].to_i
  	@strona = params[:strona].to_i
  	@user = params[:user]
  end

  def test
  	#renderowanie czyli przekierowanie na inną wewnętrzną podstronę
  	render('index')
  end

  def kurs
  	#redirect_to('http://google.pl')
  end
end
