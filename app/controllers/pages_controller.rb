class PagesController < ApplicationController
  def home
  end

  def about
    @names = %w[raquel anne fabio marcelo george]
  end

  def contact
    @email = params[:email]
    @message = params[:message]
  end

  def search
    @letter = params[:name]
    @names = %w[raquel anne fabio marcelo george]
    if params[:name]
      @names = @names.select { |member| member.start_with?(params[:name].downcase) }
    end
  end
end
