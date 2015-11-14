class PostController < ApplicationController
    
    def hello
  
        @chats = Chat.all
        
    end
    
    def submit
        
        chat = Chat.new
        chat.content = params["chat"]
        chat.save
        
        redirect_to :action => "hello"
    end
end
