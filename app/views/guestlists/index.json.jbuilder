json.array!(@guestlists) do |guestlist|
  json.extract! guestlist, :id, :name, :notified, :rsvp, :attending
  json.url guestlist_url(guestlist, format: :json)
end
