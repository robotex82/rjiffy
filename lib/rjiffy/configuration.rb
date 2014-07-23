module Rjiffy
  class Configuration

    API_VERSION = "v1.0"

    class << self
      attr_accessor :token

      def configure
        yield self
      end

      def base_uri
        "https://api.jiffybox.de/#{token}/#{API_VERSION}".to_uri
      end

      def loglevel=(loglevel)
        Wrest.logger.level = loglevel
      end
    end

  end
end
