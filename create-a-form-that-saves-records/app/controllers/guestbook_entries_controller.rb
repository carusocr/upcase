class GuestbookEntriesController < ApplicationController
  def create
    if GuestbookEntry.create({body: params[:body]})
      flash[:notice] = "Thank you for your entry."
    end
  end
end
