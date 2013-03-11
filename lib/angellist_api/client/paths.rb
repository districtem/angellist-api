module AngellistApi
  class Client
    # Defines methods related to URLs
    #
    # @see http://angel.co/api/spec/paths
    module Paths
      
      # Returns paths between the authenticated user and other specified users or startups. A "path"
      # is a connection, either direct or indirect, between the user and other specified user_ids or startup_ids. 
      # Also can specify the direction of the connection, either following or followed.
      #
      # Additional Notes:
      # - for each user/startup up to 10 different paths will show up
      # - up to 20 ids per request are allowed
      # - do not use user_ids and startup_ids at the same time
      #
      # @requires_authentication Yes
      #
      # @param options [Hash] A customizable set of options.
      # @option options [Array] :user_ids Show paths between you and a list of comma separate user_ids (up to 20).
      #    @example Get paths for a batch of users.
      #    AngellistApi.get_paths([123, 456, 789])
      # @option options [Array] :startup_ids Show paths between you and a list of comma separated startup_ids (up to 20).
      #    @example Get paths for a batch of startups.
      #    AngellistApi.get_paths([001, 002, 003])
      # @option options [String] :direction following | followed
      #    @example Get paths for me and these users with a direction of following
      #    AngellistApi.get_paths([123, 456, 789], :direction => 'following')
      #
      def get_paths(options={})
          #user_ids = [123, 456, 789] Example for using IDs
          #direction = "following" Example for using direction
          #options = { :ids => ids.join(','), :direction => ('') } Example options with IDs and direction
        options = {:some => "options "}
        get("1/paths", options)
      end
    end
  end
end
