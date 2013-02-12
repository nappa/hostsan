# -*- coding: utf-8 -*-

module Hostsan
  module Triangle

    def self.determine(arg1, arg2, arg3)
      args = [arg1, arg2, arg3].sort!

      if args.find { |i| !(i.kind_of?(Integer) || i.kind_of?(Float)) || i <= 0  }
        raise ArgumentError
      end

      if args[0] + args[1] <= args[2]
        "三角形になりません"
      else
        case args.uniq.size
        when 1
          "正三角形です"
        when 2
          "二等辺三角形です"
        else
          "三角形です"
        end
      end
    end
  end
end
