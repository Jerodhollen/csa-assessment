class EntriesController < ApplicationController
  def index
    @entries = MemberEntry.search(params[:search]).order("created DESC")
  end
end
