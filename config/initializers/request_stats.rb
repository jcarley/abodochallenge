ActiveSupport::Notifications.subscribe 'process_action.action_controller' do |*args|
  event = ActiveSupport::Notifications::Event.new(*args)
  Stats.create(description: "controller: #{event.payload[:controller]} - action: #{event.payload[:action]}",
               start_time: event.time,
               end_time: event.end,
               elapsed: event.duration())
end
