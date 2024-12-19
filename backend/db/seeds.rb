# frozen_string_literal: true

3.times do |number|
  message = Message.create(content: "#{number}番目のメッセージです！", user_id: User.first.id)
  if message.persisted?
    puts "#{number}番目のメッセージを作成しました"
  else
    puts "#{number}番目のメッセージの作成に失敗しました： #{message.errors.full_messages.join(', ')}"
  end
end

puts 'メッセージの作成が完了しました'
