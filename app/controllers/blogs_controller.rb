class BlogsController < ApplicationController
    def new
        @blog = Blog.new
    end

    def index
        @blog = Blog.all.with_attached_image
    end

   #POST method for new user add
   def create
        @blog = Blog.new(blog_params)
        if @blog.save
            redirect_to blog_index_path
        else
            render plain: "No, New user found!"
        end
    end

    def show
        @blog = Blog.find(params[:id])
    end

    def edit
        @blog = Blog.find(params[:id])
    end

    def update
        @blog = Blog.find(params[:id])

        if @blog.update(blog_params)
            redirect_to blog_show_path
        else
            render plain: "Updation failed!"
        end
    end

    def destroy
        @blog = Blog.find(params[:id])
        @blog.destroy
        
        redirect_to blog_index_path
    end


    private

    def blog_params
        params.require(:blog).permit(:title, :article, :published_year, :rating, :author, :image)
    end
end
