class EntriesController < ApplicationController
  def index
    @entries = MemberEntry.all.order("created ASC")
  end
end
