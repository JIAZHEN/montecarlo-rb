Gem::Specification.new do |s|
  s.name        = "montecarlo-rb"
  s.version     = "0.0.4"
  s.required_ruby_version = ">= 2.0.0"
  s.summary     = "MonteCarloRB is a Ruby library designed to perform Monte Carlo simulations based on historical data distributions."
  s.description = "MonteCarloRB is a Ruby library designed to perform Monte Carlo simulations based on historical data distributions."
  s.authors     = ["Jiazhen Xie"]
  s.email       = "jiazhenxie515@gmail.com"
  s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test)/}) }
  s.homepage    = "https://github.com/JIAZHEN/montecarlo-rb"
  s.license     = "MIT"
end
