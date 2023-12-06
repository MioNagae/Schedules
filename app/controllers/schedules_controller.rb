class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def create
    @schedule = Schedule.new(params.require(:schedule) .permit(:title, :startday, :finishday, :allday, :updateday))
    if @schedule.save
      flash[:notice] = "予定を追加しました"
      redirect_to :schedules
    else
      render "new"
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @schedule = Schedule.new
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :startday, :finishday, :allday, :updateday, :schedule_memo))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :schedules
    else
      render "edit"
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] = "予定を削除しました"
    redirect_to :schedules
  end

end
