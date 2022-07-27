class WelcomeController < ApplicationController
  def home
    #escape rails會擋
    # render html: "<h1>HELLO</h1>".html_safe
  @lottery =  [*1..43].sample(6)

  end

  def about
  end

  def blog
  end
end