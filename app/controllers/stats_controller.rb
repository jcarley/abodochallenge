class StatsController < ApplicationController
  def index
    @stats = Stats.all
  end
end
