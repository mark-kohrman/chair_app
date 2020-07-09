class Api::ChairsController < ApplicationController
  def index
    @chairs = Chair.all
    render 'index.json.jb'
  end
end
