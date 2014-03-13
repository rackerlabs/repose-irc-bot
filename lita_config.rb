Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "Narwhale"

  config.http.port = 3000

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :irc

  config.adapter.server = "irc.freenode.net"
  #config.adapter.port = 7000
  #config.adapter.ssl.use = true
  config.adapter.channels = ["#repose"]
  config.adapter.user = "Narwhale"
  config.adapter.realname = "Narwhale"
  config.adapter.password = "password"

  ## Example: Set options for the chosen adapter.
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

    config.robot.admins = ["BeepDog"]

    config.handlers.jenkins_notifier.jobs = {
        /.*/ => "#repose"
    }

    config.handlers.github_commits.repos = {
      "rackerlabs/repose" => "#repose",
      "rackerlabs/repose-infrastructure-management" => "#repose",
      "rackerlabs/repose-irc-bot" => "#repose"
    }

  ## Example: Set options for the Redis connection.
  # config.redis.host = "127.0.0.1"
  # config.redis.port = 1234

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
end
