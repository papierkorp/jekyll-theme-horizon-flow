# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-horizon-flow"
  spec.version       = "0.1.0"
  spec.authors       = ["Markus Schiller"]
  spec.email         = ["m.schiller@ymail.com"]

  spec.summary       = "\"Horizon-Flow\" is a minimalist Jekyll theme characterized by a serene color palette of blue, gray, and orange. It features a clean, sidebar-free layout, keeping all content in a single, flowing <main>. The header remains fixed even while scrolling, ensuring easy navigation."
  spec.homepage      = "https://rubygems.org/profiles/papierkorp"
  spec.license       = "MIT"

  spec.files = Dir['_includes/**/*', '_layouts/**/*', '_posts/**/*', '_sass/**/*', 'assets/**/*'] +
                 ['LICENSE.txt', 'README.md', 'index.html', 'archive.html', 'categories.html', 'search.html', '_data/search.json', 'tags.html', '_config.yml']


  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_development_dependency "jekyll-feed", "~> 0.17.0"
  spec.add_development_dependency "jekyll-paginate", "~> 0.18.0"
  spec.add_development_dependency "jekyll-sass-converter", "~> 3.0.0"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8.0"

  spec.add_development_dependency "bundler"
end
