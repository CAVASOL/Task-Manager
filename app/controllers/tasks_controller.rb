# frozen_string_literal: true

# app/controller/tasks_controller.rb
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @tasks = Task.new(task_params)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
