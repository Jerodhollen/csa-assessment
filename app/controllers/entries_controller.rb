class EntriesController < ApplicationController
  def index
    @entries = MemberEntry.search(params[:search]).order("created ASC")
  end
end
