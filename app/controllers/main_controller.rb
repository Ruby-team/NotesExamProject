class MainController < ApplicationController
    before_action :authenticate_model!, except: [:index, :show]
  def index
    @notes = Note.last(10).reverse
    @activities = Activity.last(15).reverse
  end
end
