class TCPLogger
  def initialize host, port
    @host = host
    @port = port
  end

  def cmd message, severity
    packet = Hash.new
    packet["message"] = message.to_s
    packet["severity"] = severity
    packet["timestamp"] = Time.now.to_s

    cmd = "echo '#{packet.to_s}' | nc #{@host} #{@port}"
    system cmd
  end

  def info message
    cmd message, "INFO"
  end

  def error message
    cmd message, "ERROR"
  end

  def debug message
    cmd message, "DEBUG"
  end

  def warn message
    cmd message, "WARN"
  end
end