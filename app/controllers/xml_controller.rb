class XmlController < ActionController::Base
  def new
  	@post = Post.new
  end
end