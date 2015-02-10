class PagesController < ApplicationController
  def index
    @guestbook_entry = GuestbookEntry.new
    render "welcome"
  end
end
