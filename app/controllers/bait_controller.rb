class BaitController < ApplicationController
  def index
    @baits = Bait.all
  end
end
