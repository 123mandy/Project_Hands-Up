class PagesController < ApplicationController
    def home
    end

    def main 
        @posts = Post.all.reverse.first(5)
    end
end