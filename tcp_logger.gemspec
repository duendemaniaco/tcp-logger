Gem::Specification.new do |s|
  s.name          = 'tcp-logger'
  s.version       = '0.0.1'
  s.date          = '2016-01-12'
  s.summary       = "Simple TCP logger to simulate logstash logger"
  s.description   = "Sends logs via TCP protocol using netcat"
  s.authors       = ["Fábio Costa"]
  s.email         = 'fabioatc@gmail.com'
  s.files         = `git ls-files`.split($/)
  s.homepage      = 'https://github.com/duendemaniaco/'

  s.add_development_dependency 'rspec'
end
