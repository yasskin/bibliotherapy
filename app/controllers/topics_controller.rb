class TopicsController < ApplicationController
  def Index
    @topics = Topic.all
    render :index
  end
end
