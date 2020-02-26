class Chat < ApplicationRecord
    after_save :notify_pusher

      def notify_pusher
        p 'hello'
        Pusher.trigger('chat', 'new', self.as_json)
      end
end
