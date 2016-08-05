class HallOfFamesController < ApplicationController

  def show
    @hall_of_fames = Feedback.where(:exemplary => true)
  end
end
