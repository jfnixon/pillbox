class TimeBlocksController < ApplicationController
  def new
    @time_block = TimeBlock.new
  end

  def create
    @time_block = current_user.time_blocks.build time_block_params
    if @time_block.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def time_block_params
    params.fetch(:time_block).permit!
  end
end

