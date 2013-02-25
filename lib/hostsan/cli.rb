
require 'net/ssh'

module Hostsan
  class Cli
    def initialize(argv)
      opts = Slop.parse do
        banner 'Usage: hostsan --hosts host1 host2 ...'

        on(:hosts=, { :as => Array })
      end

      @hosts = opts[:hosts]
    end

    def start
      @hosts.each do |host|
        ssh(host)
      end
    end

    private

    def ssh(host)
      output = nil
      cmd = "/bin/hostname"

      Net::SSH.start(host, ENV['USER']) { |ssh|
        ssh.exec(cmd)
      }
    end
  end
end
