# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-horizon-flow"
  spec.version       = "1.0.3"
  spec.authors       = ["Markus Schiller"]

  spec.summary       = "\"Horizon-Flow\" is a mobile friendly Jekyll theme characterized by a serene color palette of blue, gray, and orange. It features a clean, sidebar-free layout, keeping all content in a single, flowing main container. The header remains fixed even while scrolling, ensuring easy navigation. Allows Custom content to be displaye in the footer and footer-sidebar."
  spec.homepage      = "https://github.com/papierkorp/jekyll-theme-horizon-flow"
  spec.license       = "MIT"

  spec.files = Dir['_includes/**/*', '_layouts/**/*', '_posts/**/*', '_sass/**/*', 'assets/**/*'] +
                 ['LICENSE.txt', 'README.md', '_config.yml']


  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.17.0"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1.0"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8.0"

  spec.add_development_dependency "jekyll-sass-converter", "~> 3.0.0"
  spec.add_development_dependency "bundler"
end
