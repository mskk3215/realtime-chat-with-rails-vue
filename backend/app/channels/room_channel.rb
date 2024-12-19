# frozen_string_literal: true

class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'room_channel' # Webブラウザ側のコネクションが確立すると、このsubscribedメソッドが呼び出される。stream_from 'room_channel'はどのチャネルとコネクションを確立するかどうかを指定
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed # コネクションが切断されると呼び出されるメソッド
  end

  # ユーザがチャットにメッセージを打ち込み、そのメッセージデータを受信する度に呼び出される
  def receive(data)
    user = User.find_by(email: data['email'])

    if (message = Message.create(content: data['message'], user_id: user.id))
      ActionCable.server.broadcast 'room_channel',
                                   { message: data['message'], name: username, created_at: message.created_at } # room_channelチャネルに接続しているWebブラウザ全てにデータを送信するためのメソッド
    end
  end
end
