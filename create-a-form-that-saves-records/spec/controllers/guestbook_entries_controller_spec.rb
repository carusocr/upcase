require "rails_helper"

describe GuestbookEntriesController do
  describe "#create" do
    it "persists a new GuestbookEntry" do
      expect do
        post :create, guestbook_entry: { body: "something" }
      end.to change(GuestbookEntry, :count).by(1)
    end

    it "sets the flash notice message" do
      post :create, guestbook_entry: { body: "something" }
      expect(flash[:notice]).to eq("Thank you for your entry.")
    end
  end
end
