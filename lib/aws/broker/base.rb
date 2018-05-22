module Aws
  class Broker
    class Base

    private

      def enabled?
        config.enabled?
      end

      def create_topic
        @topic_arn = sns.create_topic(name: topic_name).topic_arn
      end

      # http://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/SNS/Resource.html
      #
      # Constraints: Topic names must be made up of only uppercase and
      # lowercase ASCII letters, numbers, underscores, and hyphens, and must
      # be between 1 and 256 characters long.
      def topic_name
        naming.topic(@topic)
      end

      def sns
        config.sns
      end

      def config
        Broker.config
      end

      def naming
        Broker.naming
      end

    end
  end
end
