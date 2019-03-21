class SlidesController < ApplicationController
  before_action :hide_header, :hide_footer

  def about
  end

  def http_protocol
  end

  def websocket_protocol
  end

  def demo
  end

  def create_channel
  end

  def subscribe_channel
  end

  def broadcast_channel
  end

  def rails_details
  end

  def more
  end

  private

  def hide_header
    @hide_header = true
  end

  def hide_footer
    @hide_footer = true
  end

end
