class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:splash_page]

  def splash_page; end

  def dashboard; end
end
