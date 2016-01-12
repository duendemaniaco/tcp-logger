TCP Logger
====

Simple TCP logger to simulate logstash logger.

Sends logs via TCP protocol using netcat

Installation
------------

```sh
$ git clone [git-repo-url] tcp-logger
$ cd tcp-logger
$ gem build tcp_logger.gemspec
$ gem install tcp_logger-0.0.1.gem
```

Usage
-----

```ruby
require 'tcp-logger'

tcp_logger = TCPLogger.new("host", "port")

tcp_logger.info "message"

tcp_logger.error "message"

tcp_logger.debug "message"

tcp_logger.warn "message"

```

License
--------
[Attribution 4.0 International (CC BY 4.0)][LICENSE]

[LICENSE]: http://creativecommons.org/licenses/by/4.0/
