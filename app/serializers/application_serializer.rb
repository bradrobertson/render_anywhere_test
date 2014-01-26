class ApplicationSerializer < ActiveModel::Serializer
  include ActionView::Helpers
  include Rails.application.routes.url_helpers

  include Sprockets::Helpers::RailsHelper

  def config
    Rails.application.config.action_controller
  end

  delegate :render, to: :renderer

private

  def renderer
    @renderer ||= HtmlRenderer.new
  end
end
