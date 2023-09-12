# Horizon Flow Jekyll Theme

- [Installation](#installation)
  - [Ruby Gem Method](#ruby-gem-method)
  - [GitHub Pages Method](#github-pages-method)
- [Structure](#structure)
  - [Starting Fresh](#starting-fresh)
  - [Starting from `jekyll new`](#starting-from-jekyll-new)
- [Configuration](#configuration)
  - [Site URL](#site-url)
  - [Site Base URL](#site-base-url)
  - [Navigation](#navigation)
  - [Footer](#footer)
  - [Footer Sidebar](#footer-sidebar)
  - [Table of Contents](#table-of-contents)
  - [paginate](#paginate)
  - [default plugins](#default-plugins)
- [Front Matter](#front-matter)
- [Layouts](#layouts)
  - [`layout: default`](#layout-default)
  - [`layout: post`](#layout-post)
  - [`layout: archive`](#layout-archive)
  - [`layout: home`](#layout-home)
  - [`layout: categories`](#layout-categories)
  - [`layout: search`](#layout-search)
  - [`layout: tags`](#layout-tags)


[![LICENSE](https://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat-square)](https://raw.githubusercontent.com/papierkorp/jekyll-theme-horizon-flow/main/LICENSE.txt)
[![Jekyll](https://img.shields.io/badge/jekyll-%3E%3D%203.6-blue.svg?style=flat-square)](https://jekyllrb.com/)
[![Ruby gem](https://img.shields.io/gem/v/jekyll-theme-so-simple.svg?style=flat-square)]()

This is my first ever theme or anything like this so I got a whole damn LOT of Inspiration and Ideas of the [So Simple](https://github.com/mmistakes/so-simple-theme/tree/master) theme from [mmistakes](https://github.com/mmistakes). Also i almost completly copied his readme pls forgive me <3.

This theme can offer:

* Custom Navigation
* Dynamically created Footer with Font Awesome Icons and Social Links
* Flexible Footer-Sidebar (above the Footer) where you can include up to 5 elements. You can choose between 4 premade ones and self created ones
* SEO best practices via [Jekyll SEO Tag](https://github.com/jekyll/jekyll-seo-tag)
* Javascript free besides the optional search bar
* supports tags and categories
* offers an archive
* Carefully designed posts for almost all Markup elements

---------------------SCREENSHOTS---------------------

## Installation

If you're running Jekyll v4.3+ and self-hosting you can quickly install the theme as a Ruby gem. If you're hosting with [**GitHub Pages**](https://pages.github.com/) you can install as a [remote theme](https://github.com/benbalter/jekyll-remote-theme) or directly copy all of the theme files (see [structure](#structure) below) into your project.

### Ruby Gem Method

1. Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-horizon-flow"
```

2. Add this line to your Jekyll site's `_config.yml` file:

```yaml
theme: jekyll-theme-horizon-flow
```

3. Then run [Bundler](http://bundler.io/) to install the theme gem and dependencies:

```terminal
bundle install
```

### GitHub Pages Method

GitHub Pages has added [full support](https://github.com/blog/2464-use-any-theme-with-github-pages) for any GitHub-hosted theme.

1. Replace `gem "jekyll"` with:

```ruby
gem "github-pages", group: :jekyll_plugins
```

2. Run `bundle update` and verify that all gems install properly.

3. Add `remote_theme: ""` to your
   `_config.yml` file. Remove any other `theme:` or `remote_theme:` entries.

---

**Note:** Your Jekyll site should be viewable immediately at <http://USERNAME.github.io>. If it's not, you can force a rebuild by pushing empty commits to GitHub (see below for more details).

If you're hosting several Jekyll based sites under the same GitHub username you will have to use Project Pages instead of User Pages. Essentially you rename the repo to something other than **USERNAME.github.io** and create a `gh-pages` branch off of `master`. For more details on how this works, check [GitHub's documentation](https://help.github.com/articles/user-organization-and-project-pages/).


### Structure


**Please note:** If you installed Horizon Flow via the Ruby Gem or remote theme methods, theme files found in `/_layouts`, `/_includes`, `/_sass`, and `/assets` will be missing from your project. This is normal as they are bundled with the [`jekyll-theme-horizon-flow`](https://rubygems.org/gems/jekyll-theme-horizon-flow) gem.

```
├── _includes           # theme includes
├── _layouts            # theme layouts (see below for usage)
├── _sass               # Sass partials
├── assets
|  ├── style.scss       # main style file
|  └── search.json      # stores your data, used for the search
├── _config.yml         # sample configuration
├── archive.md          # if you want to use the archive page
├── categories.md       # if you want to use the categories page
├── impressum.html      # sample impressum
├── index.html          # default index.html file with pagination
├── search.md           # if you want to use the search page
├── tags.md             # if you want to use the tags page
```

### Starting Fresh

After creating a `Gemfile` and installing the theme you'll need to rename `index.md` to [`index.html`](index.html)
Also you have to add `gem "jekyll-paginate"` to your `Gemfile`:

```ruby
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-paginate"
end
```

If you want to use the full potential of this theme you should also follow along [Navigation setup](#Navigation)
You can also configure most of the hard coded Labels if you follow this Instruction: [Configurable Lables](#configurable-lables)


### Starting from `jekyll new`

Using the `jekyll new` command will get you up and running the quickest.

Edit your `Gemfile` and `_config.yml` files following the [installation guide](#installation) above and [configuration guide](#configuration) below.

## Configuration

Configuration of site-wide elements (`navigation`, `footer`, `footer-sidebar`, `title`, `description`, `url` etc.) happens in your project's `_config.yml`.

Here is a example `_config.yaml`:

```yaml
url: "https://example.com"

navigation:
  - title: Home
    url: /index.html
  - title: Categories
    url: /categories.html
  - title: Tags
    url: /tags.html
  - title: Archive
    url: /archive.html
  - title: Search
    url: /search.html

# Footer Links
footer_links:
  - title: Feed
    url: /feed.xml
    icon: fa fa-rss
  - title: GitHub
    url: https://github.com/papierkorp
    icon: fa fa-github
  - title: Email
    url: mailto:xxx@test.de
    icon: fa fa-envelope
  - title: Twitter
    url: https://twitter.com
    icon: fa fa-twitter
  - title: Facebook
    url: https://facebook.com
    icon: fa fa-facebook
  - title: Instagram
    url: https://instagram.com
    icon: fa fa-instagram
  - title: Impressum
    url: /impressum.html

footer_sidebar:
  description:
    enabled: true
  categories:
    enabled: true
    count: 30
  tags:
    enabled: true
    count: 30
  recentposts:
    enabled: true 
    count: 10

plugins:
  - jekyll-feed
  - jekyll-paginate
  - jekyll-seo-tag
  - jekyll-sitemap

paginate: 5
paginate_path: "/:num/"

description: >- # this means to ignore newlines
  <h1>
    About Me
  </h1>
  <p>
    This Text will be shown in the footer-sidebar.
  </p>
  <p>
    You can put in whatever you like..
  </p>


highlighter: rouge
kramdown:
  syntax_highlighter_opts:
    block:
      line_numbers: true

defaults:
  -
    scope:
      path: "_posts"
    values:
      toc: yes
      display_toc: true

permalink: /posts/:title #remove date from link
```

Take a look [here](https://jekyllrb.com/docs/configuration/) for more Information.

As for the possible Configurations this theme offers take note of the following:

* [Site URL](#site-url)
* [Site Base URL](#site-base-url)
* [Navigation](#navigation)
* [Footer](#footer)
* [Footer Sidebar](#footer-sidebar)
* [Table of Contents](#table-of-contents)
* [paginate](#paginate)
* [default plugins](#default-plugins)


### Site URL

The base hostname and protocol for your site. If you're hosting with GitHub Pages this will be something like `url: "https://github.io.papierkorp"` or `url: "https://your-site.com"` if you have a custom domain name.

GitHub Pages now [forces `https://` for new sites](https://help.github.com/articles/securing-your-github-pages-site-with-https/), so be mindful of that when setting your URL to avoid mixed-content warnings.

**Note:** Jekyll overrides the value of `url` with `http://localhost:4000` when running `jekyll serve` locally in development. If you want to avoid this behavior set `JEKYLL_ENV=production` to [force the environment](http://jekyllrb.com/docs/configuration/#specifying-a-jekyll-environment-at-build-time) to production.

### Site Base URL

This option causes all kinds of confusion in the Jekyll community. If you're not hosting your site as a [GitHub Project Page](https://help.github.com/articles/user-organization-and-project-pages/) or in a subfolder (e.g., `/blog`), then don't mess with it.

In the case of the **Horzion FLow** demo site it's hosted on GitHub at <https://papierkorp.github.io>. To correctly set this base path I'd use `url: "https://papierkorp.github.io"` and `baseurl: "/"`.

For more information on how to properly use `site.url` and `site.baseurl` as intended by the Jekyll maintainers, check [Parker Moore's post on the subject](https://byparker.com/blog/2014/clearing-up-confusion-around-baseurl/).

**Note:** When using `baseurl` remember to include it as part of your link and asset paths in your content. Values of `url:` and `baseurl: "/blog"` would make your local site visible at <http://localhost:4000/blog> and not <http://localhost:4000>. You can either prepend all your asset and internal link paths with `{{ site.baseurl }}` or use Jekyll's `relative_url`.

To use the example values above the following image path of `{{ '/images/my-image.jpg' | relative_url }}` would output correctly as `http://localhost:4000/blog/images/my-image.jpg`.

Without the `relative_url` filter that asset path would be missing `/blog` and you'd have a broken image on your page.


### Navigation

The Navigation is created in the [_config](#configuration) like this:

```yaml
Navigation:
  - title: Home
    url: /index.html
  - title: Categories
    url: /categories.html
  - title: Tags
    url: /tags.html
  - title: Archive
    url: /archive.html
  - title: Search
    url: /search.html
  - title: Custom
    url: /custom.html
```

You will have to create the specific `.html` or `.md` File in the target directory.

If you want to use all of the premade layouts you will have to create this files in your root Directory:

**index.html**
```html
---
title: Home
layout: home
---
```

**categories.md**
```markdown
---
title: Categories
layout: categories
---
```

**tags.md**
```markdown
---
title: Tags
layout: tags
---
```

**archive.md**
```markdown
---
title: Archive
layout: archive
---
```

**search.md**
```markdown
---
title: Search
layout: search
---
```

**custom.html**
```html
---
title: Custom Content
layout: post
---
<h1>Custom Content</h1>
<p>data...</p>
```

or

**custom.md**
```markdown
---
title: Custom Content
layout: post
---

# Custom Content

markdown data...
```

Besides the `index.html` (because of the pagination) it doesnt matter if you use `.html` or `.md` Files.
For custom I will see if I can add another layout to use if neccessary, but I think `post` will do for everything.

### Footer

The Footer (Links) are created in the [_config](#configuration) like this:

You can use all [Font Awesome](https://fontawesome.com/v4/icons/) Icons (but you dont have to). As you can see with the Impressum you can also link to locale files.

You can add all kinds of social Media Links 


```yaml
footer_links:
  - title: Feed
    url: /feed.xml
    icon: fa fa-rss
  - title: GitHub
    url: https://github.com/papierkorp
    icon: fa fa-github
  - title: Email
    url: mailto:xxx@test.de
    icon: fa fa-envelope
  - title: Twitter
    url: twitter.com
    icon: fa fa-twitter
  - title: Facebook
    url: facebook.com
    icon: fa fa-facebook
  - title: Instagram
    url: instagram.com
    icon: fa fa-instagram
  - title: Impressum
    url: /impressum.html
```

### Layouts

In here you can define the amount of columns used to display all tags/categories/years via the `_config`.
Available values are `1-5`.

```yaml
layouts:
  tags:
    columns: 5  # default 4
  categories:
    columns: 3  # default 3
  archive:
    columns: 1  # default 2
```


### Footer Sidebar

The footer Sidebar is the content directly above the footer.
Per default there are 4 elements available:

**description:** Uses the `description:` of `_config` to display all the data from there.  
**categories:** Shows random categories according to the count. And allows you to set the amount of columns.  
**tags:** Shows random categories according to the count. And allows you to set the amount of columns.  
**recentposts:** Shows the last posts according to the count. And allows you to set the amount of columns.  
**extracontent:** will be coming soon.. For the best experience you should use an <h1></h1> on the top.

```yaml
description: >- # this means to ignore newlines until
  <h1>
    This is me
  </h1>
  <p>
    Im a german guy from bavaria currently working as a devops engineer. I will try to keep the blog in english but may switch to german any time.
  </p>
  <p>
    Here you will find a collection of blogs, tutorials, snippets or introductions mainly on (mostly modern) tech.
    Also a few bits of gaming, fitness, finances and mabye (a big maybe) cooking.
    I may find other topics of interest as well :D
  </p>


footer_sidebar:
  description:
    enabled: true  # default: true
  categories:
    enabled: true  # default: false
    count: 100  # default: 100
    columns: 2  # default: 2
  tags:
    enabled: true  # default: false
    count: 100  # default: 100
    columns: 4  # default: 4
  recentposts:
    enabled: true  # default: true
    count: 10  # default: 10
    columns: 2  #  default: 2
```

### Table of Contents

Take a look at the [Front Matter](#front-matter) on how to disable the TOC.

I use the [Jekyll-Toc](https://github.com/allejo/jekyll-toc) from [allejo](https://github.com/allejo). So the TOC will be created on the build and is available in the html but will only be displayed after the TOC Hamburger Menu button is pressed.

Basically I included the `_includes/toc.html` file and use it in the post layout.


### paginate

The default [Jekyll paginator](https://jekyllrb.com/docs/pagination/) is used. So you can use all configs described on their page.

The default config of this theme uses:

```yaml
paginate: 5
paginate_path: "/:num/"
```

### Read Time

You can change the default Reading Time which is set to 180 words per min by changing `words_per_minute` in the `_config`:

```yaml
words_per_minute: 180
```

### default plugins

In the default `_config` this plugins are used:

```yaml
plugins:
  - jekyll-feed
  - jekyll-paginate
  - jekyll-seo-tag
  - jekyll-sitemap
```


### Configurable Labels

You dont have to configure anything, but if you dislike some terms you have the option to change them like this:

Create a `_data` folder and in this folder a `configurable_lables.yaml` so in the end it looks like this: `./_data/configurable_lables.yaml`

Now you can change the following Labels:

| Name             | Description                                                                                                          | Example                                  |
|------------------|----------------------------------------------------------------------------------------------------------------------|------------------------------------------|
| read_time_before | Is used 2 times, first in the home layout when all posts are displayed under the title. Secondly in the post header. | read_time_before: "Estimated Read Time:" |
| read_time_after  | Is used 2 times, first in the home layout when all posts are displayed under the title. Secondly in the post header. | read_time_after: "minutes"               |
| last_modified_at | Is used in the post in the header.                                                                                   | last_modified_at: "Last Modified at:"    |
|                  |                                                                                                                      |                                          |
|                  |                                                                                                                      |                                          |
|                  |                                                                                                                      |                                          |
|                  |                                                                                                                      |                                          |

**Example:**

```yaml
read_time_before: "Estimated Read Time:"
read_time_after: "minutes"
last_modified_at: "Last Modified at:"
```



---

## Front Matter

Take a look [here](https://jekyllrb.com/docs/front-matter/) on what Front Matter is and how to use it.

This theme offers the following Front-Matter:

| layout | Name             | Description                                                                                                                 | Example                                                                                 |
|--------|------------------|-----------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| `post` | subtitle         | Adds a subtitle to the post (optional)                                                                                      | ---<br>subtitle: "You're going to love this." <br>---                                        |
| `post` | display_toc      | true or false, shows the toc button on the bottom right (default: true)                                                     | ---<br>display_toc: false <br>---                                                            |
| `post` | last_modified_at | Add extra meta-data when the post was last modified. It takes the date as you write it like a string.                       | ---<br>last_modified_at: 10.09.2023 <br>---                                                  |
| `post` | search_keywords  | Add extra data to the [search.json](#layout-:-search) file                                                                                | ---<br>search_keywords: "words i didnt use in the tags" <br>---                              |
| `post` | toTop            | true or false, shows the "To the Top" button on the bottom left (default: true)                                             | ---<br>toTop: false <br>---                                                                  |
| `post` | seoDescription   | Add a specific SEO Description for Search Engines, uses an automated excerpt otherwise. Can be at most 160 Characters long. | ---<br>seoDescription: "Just a little summary to be better found in Search Engines =)" ---<br>|
| `post` | noheader         | Disable the whole header and only show the Content. (default: false)                                                        | ---<br>noheader: true <br>---                                                                |
| `post` | searchable       | The post wont be included in the search.                                                                                    | ---<br>searchable: false <br>---                                                             |
| `post` | show_supplements | The supplements (date, readtime, tags...) wont be shown.                                                                    | ---<br>show_supplements: false<br><br>---                                                 |
| `home` | noheader         | Disable the whole header and only show the Content. (default: false)                                                        | ---<br>noheader: true <br>---                                                                |

--- 

## Layouts

This theme provides the following layouts, which you can use by setting the `layout` [front matter](https://jekyllrb.com/docs/frontmatter/) on each page, like so:

```yaml
---
layout: name
---
```

### `layout: default`

This layout handles all of the basic page scaffolding placing the page content between the masthead and footer elements. All other layouts inherit this one and provide additional styling and features inside of the `{{ content }}` block.

**Note:** You should not use this.


### `layout: post`

This is the basic layout for new blog posts.
See [Front Matter](#front-matter) for more details on what you can use.


### `layout: archive`

This layout displays all posts grouped by the year they were published. 
There is no front matter for it.

### `layout: home`

This layout shows all of your blog posts, while the newest are in the front.

See [Front Matter](#front-matter) for more details on what you can use.


### `layout: categories`

This layout displays all posts grouped category.
There is no front matter for it.



### `layout: search`

This layout displays a search form and displays related pages based on the query.
See [Front Matter](#front-matter) for more details on how you can enhance the search or disable the search for specific posts.

It uses `_assets/search.json` as a base. `search.json` will be generated with the site build and will include the following data of each post:

- title
- summary (first 50 words of the post)
- url
- category
- tags
- keywords
- date


### `layout: tags`

This layout displays all posts grouped by tag.
There is no front matter for it.