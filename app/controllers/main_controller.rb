class MainController < ApplicationController

  def index
    @reminders = Reminder.all
  end
end
