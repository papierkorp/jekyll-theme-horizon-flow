# blueslate_horizon

Welcome to your new Jekyll theme! In this directory, you'll find the files you need to be able to package up your theme into a gem. Put your layouts in `_layouts`, your includes in `_includes`, your sass files in `_sass` and any other assets in `assets`.

To experiment with this code, add some sample content and run `bundle exec jekyll serve` – this directory is setup just like a Jekyll site!

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "blueslate_horizon"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: blueslate_horizon
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blueslate_horizon

## Usage

Home / Index / About_me / Site Description:
    FrontMatter:
        noheader: true
    config: description will be used.

posts:
    FrontMatter:
        subtitle: "You're going to love this."
        toc: yes #create toc: yes, no
        display_toc: true #true, false
        last_modified_at: 10.09.2023
        search_keywords: #used for the search bar
        toTop: false #display toTop Button in post: true, false
        seoDescription: "absdfbsadf" #160 characters max
config:
    footer_links:
      + title: Feed
        url: /feed.xml
        icon: fa fa-rss
      + title: GitHub
        url: https://github.com/papierkorp
        icon: fa fa-github
      + title: Email
        url: mailto:xxx@test.de
        icon: fa fa-envelope
      + title: Impressum
        url: /impressum.html
    navigation:
      + title: Home
        url: /index.html
      + title: Categories
        url: /categories.html
      + title: Tags
        url: /tags.html
      + title: Archive
        url: /archive.html
      + title: Search
        url: /search.html
    toc:
     min_level: 1
     max_level: 4
     list_class: toc
     list_class: toc__list
     sublist_class: toc__sublist
    paginate: 5
    description: >- 
    footer_sidebar:
      description:
        enabled: true #default: true
      categories:
        enabled: true #default: false
        count: 4 #default: 100
      tags:
        enabled: true #default: false
        count: 4 #default: 100
      recentposts:
        enabled: true #default: true
        count: 10 #default: 10


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/blueslate_horizon. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `blueslate_horizon.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
