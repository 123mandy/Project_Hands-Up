class PagesController < ApplicationController
    def home
    end

    def main
        @posts = Post.all
    end
end