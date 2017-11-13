class Api::V1::DefinitionsController < ApplicationController

  def index
    @definitions = Definition.all
    render json: @definitions
  end

  def show
    @definition = Definition.find(params[:id])

    render json: @definition
  end

  def create
    @definition = Definition.create(word_id: params[:word_id], user_id: params[:user_id], part_of_speech: params[:part_of_speech], definition_text: params[:definition_text], sentence: params[:sentence])

    render json: @definition
  end

  def update
    @definition = Definition.find(params[:id])
    @definition.increment!(:likes)
    @definition.save

    render json: @definition
  end

  private

  def permitted_params
    params.require(:results).permit!
  end

end
