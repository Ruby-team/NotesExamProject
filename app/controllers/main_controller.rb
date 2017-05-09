class MainController < ApplicationController
    before_action :authenticate_model!, except: [:index, :show]
  def index
  end
end
