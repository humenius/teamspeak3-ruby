# frozen_string_literal: true

require 'teamspeak3/version'

module Teamspeak3
  module Ruby
    require 'net/ssh'

    host = 'gahr.dev'
    user = 'serveradmin'
    port = 10_022
    password = ''

    command = 'serverlist'
    Net::SSH.start(host,
                   user,
                   password: password,
                   port: port,
                   non_interactive: true,
                   keepalive: true) do |ssh|

      ssh.open_channel do |channel|
        channel.send_channel_request 'shell' do |ch, success|
          if success
            puts 'shell requested'
            ch.send_data "#{command}\n"
            ch.on_data do |c, data|
              puts data
            end
            ch.send_data "quit\n"
          end
        end
      end
      ssh.loop
    end
  end
end
