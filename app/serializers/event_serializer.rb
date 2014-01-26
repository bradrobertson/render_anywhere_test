class EventSerializer < ApplicationSerializer
  attributes :id, :image_url, :body

  def image_url
    image_path 'rails.png'
  end

  def body
    render partial: 'events/event', layout: false
  end
end
