class HoeController < ApplicationController
    def  index
        
    end
    
    def write
        #이메일 보내는 내용
        @yuza = params[:title]
        @cola = params[:content]
        
        new_post =Post.new
        new_post.title = @yuza
        new_post.content = @cola
        new_post.save
        redirect_to "/list"
    end
    
    def list
        @every_post = Post.all.order("id desc")
    end
    
    def update_view
        @one_post = Post.find(params[:id])
    end
    
    def real
        @one_post = Post.find(params[:id])
        @one_post.title = params[:title]
        @one_post.content = params[:content]
        @one_post.save
        redirect_to "/list"
    end
    
    def destroy
        @one_post = Post.find (params[:id])
        @one_post.destroy
        redirect_to "/list"
    end
end
