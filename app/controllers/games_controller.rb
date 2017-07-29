class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def edit
  end

  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html do
          redirect_to games_path, notice: 'Game was successfully created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html do
          redirect_to @game, notice: 'Game was successfully updated.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :packageName, :Store, :live)
  end
end
