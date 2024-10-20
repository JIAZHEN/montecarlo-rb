Gem::Specification.new do |s|
  s.name        = "MonteCarloRB"
  s.version     = "0.0.2"
  s.summary     = "MonteCarloRB is a Ruby library designed to perform Monte Carlo simulations based on historical data distributions."
  s.description = "MonteCarloRB is a Ruby library designed to perform Monte Carlo simulations based on historical data distributions."
  s.authors     = ["Jiazhen Xie"]
  s.email       = "jiazhenxie515@gmail.com"
  s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test)/}) }
  s.homepage    = "https://github.com/JIAZHEN/montecarlo-rb"
  s.license     = "MIT"
end
