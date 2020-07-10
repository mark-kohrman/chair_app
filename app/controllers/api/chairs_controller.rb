class Api::ChairsController < ApplicationController
  def index
    @chairs = Chair.all
    render 'index.json.jb'
  end

  def show
    @chair = Chair.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @chair = Chair.new(
      color: params[:color],
      chair_type: params[:chair_type],
      price: params[:price]

    )
    @chair.save
    render 'show.json.jb'
  end

  def update
    @chair = Chair.find_by(id: params[:id])
    @chair.update(
      color: params[:color] || @chair.color,
      chair_type: params[:chair_type] || @chair.chair_type,
      price: params[:price] || @chair.price
    )
    @chair.save
    render 'show.json.jb'
  end

end
