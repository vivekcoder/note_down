class TagsController < ApplicationController
  layout 'notes'

  def show
    @tags = Tag.all
    @tag = @tags.find(params[:id])
    @q = @tag.notes.ransack(params[:q])
    @notes = @q.result.paginate(per_page: 10, page: params[:page])
    # render 'notes/index'
  end
end