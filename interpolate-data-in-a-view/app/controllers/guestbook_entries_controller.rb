class GuestbookEntriesController < ApplicationController
  def create
    GuestbookEntry.create(guestbook_entry_params)
#    GuestbookEntry.create({body: "something"})
#    @entries = GuestbookEntry.find(:all)
    redirect_to root_path, notice: "Thank you for your entry."
  end

  private

  def guestbook_entry_params
    params.require(:guestbook_entry).permit(:body)
  end

end
