require 'clockwork'
require 'clockwork/database_events'
require_relative '../config/boot'
require_relative '../config/environment'

module Clockwork
  # required to enable database syncing support
  Clockwork.manager = DatabaseEvents::Manager.new

  sync_database_events model: ::Reminder, every: 1.minute do |event|
    # event.job_name.constantize.perform_later(event.job_arguments)

    event.send_message ENV['TO_PHONE'], event.body
  end

end
