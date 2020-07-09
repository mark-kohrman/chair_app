class Api::ChairsController < ApplicationController
  def index
    @chairs = Chair.all
    render 'index.json.jb'
  end

  def show
    @chair = Chair.find_by(id: params[:id])
    render 'show.json.jb'
  end

  
end
