class TrainersController < ApplicationController
  def index
    trainers = Trainer.all
    # render json: trainers, include:{ 
    #   pokemons: {
    #     except: [:created_at, :updated_at]
    #   }
    # }, except: [:created_at, :updated_at]
    render json: TrainerSerializer.new(trainers).to_serialized_json
  end
end