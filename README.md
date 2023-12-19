# [Horizon Flow Jekyll Theme](https://papierkorp.github.io/jekyll-theme-horizon-flow/)

- [Installation](#installation)
- [Configuration](#configuration)
  - [Site URL](#site-url)
  - [Site Base URL](#site-base-url)
  - [Navigation](#navigation)
  - [Footer](#footer)
  - [Layouts](#layouts)
  - [Footer Sidebar](#footer-sidebar)
  - [Table of Contents](#table-of-contents)
  - [paginate](#paginate)
  - [Read Time](#read-time)
  - [default plugins](#default-plugins)
  - [Configurable Labels](#configurable-labels)
  - [Comments](#comments)
- [Front Matter](#front-matter)
- [Layouts](#layouts-1)
  - [`layout: default`](#layout-default)
  - [`layout: post`](#layout-post)
  - [`layout: archive`](#layout-archive)
  - [`layout: home`](#layout-home)
  - [`layout: categories`](#layout-categories)
  - [`layout: search`](#layout-search)
  - [`layout: tags`](#layout-tags)
- [whislist](#whislist)


[![LICENSE](https://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat-square)](https://raw.githubusercontent.com/papierkorp/jekyll-theme-horizon-flow/main/LICENSE.txt)
[![Jekyll](https://img.shields.io/badge/jekyll-%3E%3D%203.6-blue.svg?style=flat-square)](https://jekyllrb.com/)
[![Gem Version](https://badge.fury.io/rb/jekyll-theme-horizon-flow.svg)](https://badge.fury.io/rb/jekyll-theme-horizon-flow)


This is my first ever theme or anything like this so I got a whole damn LOT of Inspiration and Ideas of the [So Simple](https://github.com/mmistakes/so-simple-theme/tree/master) theme from [mmistakes](https://github.com/mmistakes). Also i almost completly copied his readme pls forgive me <3.

This theme can offer:

* Custom Navigation
* Dynamically created Footer with Font Awesome Icons and Social Links
* optional, flexible and customizable Footer-Sidebar (above the Footer)
* include up to 5 elements in the Footer-sidebar, choosen between 4 premade ones and self created ones
* SEO best practices via [Jekyll SEO Tag](https://github.com/jekyll/jekyll-seo-tag)
* Javascript free besides the optional search page and the optional comments
* supports tags and categories
* offers an archive
* Carefully designed posts for almost all Markup elements
* Activateable TOC and to the TOP Buttons for each post
* Mobile Friendly
* Highly Customizable
* optional server-free [Comments](https://www.aleksandrhovhannisyan.com/blog/jekyll-comment-system-github-issues/#how-to-add-comments-to-a-jekyll-blog) with Github Issues (hosted on Github)

![Horizon Flow Screenshots](https://papierkorp.github.io/jekyll-theme-horizon-flow/screenshot.png)


## Installation

1. Follow the [Jekyll Quickstart](https://jekyllrb.com/docs/)

2. Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-horizon-flow"
```

3. Add one of those lines to your Jekyll site's `_config.yml` file:

```yaml
theme: jekyll-theme-horizon-flow
#remote_theme: papierkorp/jekyll-theme-horizon-flow #if you host on github pages
```

4. Then run [Bundler](http://bundler.io/) to install the theme gem and dependencies:

```terminal
bundle install
```

5. Rename `index.md` to [`index.html`](index.html)

6. Follow the [Navigation setup](#Navigation) guide to make the best out of the theme.



## Configuration

Configuration of site-wide elements (`navigation`, `footer`, `footer-sidebar`, `title`, `description`, `url` etc.) happens in your project's `_config.yml`.

Here is a example `_config.yaml`:

```yaml
read_time_after: "min read"
words_per_minute: 180

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
  arrangement:
  - description
  - tags
  - categories
  - extracontent2
  - recentposts
  description:
    enabled: true
  categories:
    enabled: true
    count: 100
    columns: 1
  tags:
    enabled: true
    count: 100
    columns: 3
  recentposts:
    enabled: true
    count: 10
    columns: 2
  custom_content:
    enabled: true
    data: >-
      <h3>CUSTOM CONTENT</h3>
      <p>not really content though...</p>
  custom_content2:
    enabled: false

plugins:
  - jekyll-feed
  - jekyll-paginate
  - jekyll-seo-tag
  - jekyll-sitemap

paginate: 5
paginate_path: "/:num/"

include: [".md"]

description: >- # this means to ignore newlines until "baseurl:"
  <h3>
    This is me
  </h3>
  <p>
    Im a german guy from bavaria currently working as a devops engineer. I will try to keep the blog in english but may switch to german any time.
  </p>
  <p>
    Here you will find a collection of blogs, tutorials, snippets or introductions mainly on (mostly modern) tech.
    Also a few bits of gaming, fitness, finances and mabye (a big maybe) cooking.
    I may find other topics of interest as well :D
  </p>


highlighter: rouge
kramdown:
  syntax_highlighter_opts:
    block:
      line_numbers: true

lang: en

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
* [Layouts](#layouts)
* [Footer Sidebar](#footer-sidebar)
* [Table of Contents](#table-of-contents)
* [paginate](#paginate)
* [Read Time](#read-time)
* [default plugins](#default-plugins)
* [Configurable Labels](#configurable-labels)
* [Comments](#comments)

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
Available values are `0-5`.

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
Per default there are 6 elements available:

**description:** Uses the `description:` of `_config` to display all the data from there. For the best experience you should use an <h1></h1> on the top.  
**categories:** Shows random categories according to the count.  
**tags:** Shows random categories according to the count.  
**recentposts:** Shows the last posts according to the count.  
**custom_content:** As seen in the example below you can add custom content in two ways, the content can include `html` code.
**custom_content2:** same as `custom_content`.

You can set the Arrangement of the given elements like in the example below.

**Note**, if you dont set the Arrangement **nothing** will be displayed! Also if you want the categories and tags links to work you need to follow the [Navigation Setup](#navigation)

```yaml
description: >- # this means to ignore newlines until
  <h3>
    This is me
  </h3>
  <p>
    I just created my first theme .. hurray :D
  </p>

footer_sidebar:
  enabled: true
  auto: false # false = all elements will have the same width, true = each element takes what it needs
  arrangement:  # you can rearrange the positions of the elements
  - description  # will be the first one to be displayed
  - tags  # second in the row ...
  - custom_content
  - recentposts  # will be displayed last
  description:
    enabled: true  # default: true
    columns: 2  # default: 0 - if you include a list
  categories:
    enabled: true  # default: false
    count: 100  # default: 100
    columns: 5  # default: 0
  tags:
    enabled: true  # default: false
    count: 100  # default: 100
    columns: 5  # default: 0
  recentposts:
    enabled: true  # default: true
    count: 10  # default: 5
    columns: 2  # default: 0
  custom_content:
    enabled: true
    data: >-
      <h3>EXTRACONTENT</h3>
      <p>not really content though...</p>
    columns: 2  # default: 0 - if you include a list
  custom_content2:
    enabled: false
    data: "<h3>mhm</h3>"
    columns: 2  # default: 0 - if you include a list
```

The default of `0` stands for automatic alignment.


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

| Name                      | Description                                                                                                           | Example + default value                                 | Example                                                                                         |
|-------------------------- |---------------------------------------------------------------------------------------------------------------------- |-------------------------------------------------------- |-----------------------------------------------------------------------------------------------  |
| read_time_before          | Is used 2 times, first in the home layout when all posts are displayed under the title. Secondly in the post header.  | read_time_before: ""                                    | ---<br>subtitle: "You're going to love this."<br>---                                            |
| read_time_after           | Is used 2 times, first in the home layout when all posts are displayed under the title. Secondly in the post header.  | read_time_after: "min read"                             | ---<br>display_toc: false<br>---                                                                |
| last_modified_at          | Is used in the post in the header.                                                                                    | last_modified_at: "Last Modified at:"                   | ---<br>last_modified_at: 10.09.2023<br>---                                                      |
| search_title              | The title used in the `search` layout.                                                                                | search_title: "Search"                                  | ---<br>search_keywords: "words i didnt use in the tags"<br>---                                  |
| archive_title             | The title used in the `archive` layout.                                                                               | archive_title: "Archive"                                | ---<br>toTop: false<br>---                                                                      |
| archive_found             | The text displayed in the `archive` layout, under all years.                                                          | archive_found: "Found Posts per selected Year"          | ---<br>seoDescription: "Just a little summary to be better found in Search Engines =)"<br>---   |
| archive_nothing_found     | The text displayed in the `archives` layout if no archives exist.                                                     | archive_nothing_found: "No archive years available."    | ---<br>noheader: true<br>---                                                                    |
| tags_title                | The title used in the `tags` layout.                                                                                  | tags_title: "Tags"                                      |                                                                                                 |
| tags_found                | The text displayed in the `tags` layout, under all years.                                                             | tags_found: "Found Posts per selected Tag"              |                                                                                                 |
| tags_nothing_found        | The text displayed in the `tags` layout if no tags exist.                                                             | tags_nothing_found: "No tags available."                |                                                                                                 |
| categories_title          | The title used in the `categories` layout.                                                                            | categories_title: "Categories"                          |                                                                                                 |
| categories_found          | The text displayed in the `categories` layout, under all years.                                                       | categories_found: "Found Posts per selected Categorie"  |                                                                                                 |
| categories_nothing_found  | The text displayed in the `categories` layout if no categories exist.                                                 | categories_nothing_found: "No categories available."    |                                                                                                 |

**Example: (default Values)**

```yaml
read_time_before: ""
read_time_after: "min read"
last_modified_at: "Last Modified at:"
search_title: "Search"
archive_title: "Archive"
archive_found: "Found Posts per selected Year"
archive_nothing_found: "No archive years available."
tags_title: "Tags"
tags_found: "Found Posts per selected Tag"
tags_nothing_found: "No tags available."
categories_title: "Categories"
categories_found: "Found Posts per selected Categorie"
categories_nothing_found: "No categories available."
```


### Comments

This theme enables the use of Comments per Github Issues API (taken from [here](https://www.aleksandrhovhannisyan.com/blog/jekyll-comment-system-github-issues/#how-to-add-comments-to-a-jekyll-blog)).
To enable comments you will need the following Config:

```yaml
issues_repo: YourUsername/RepoName  # e.g.: issues_repo: papierkorp/blog
```

In addition you will have to open up a Issue for each blog post manually and copy the ID of this Issue.
Afterwards add this Front Matter to your Post:

```yaml
comments_id: 1
```

---

## Front Matter

Take a look [here](https://jekyllrb.com/docs/front-matter/) on what Front Matter is and how to use it.

This theme offers the following Front-Matter:

| layout | Name             | Description                                                                                                                 | Example                                                                                 |
|--------|------------------|-----------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| `post` | subtitle         | Adds a subtitle to the post (optional)                                                                                      | ---<br>subtitle: "You're going to love this." <br>---                                        |
| `post` | display_toc      | true or false, shows the toc button on the bottom right (default: true)                                                     | ---<br>display_toc: false <br>---                                                            |
| `post` | display_toc2     | true or false, shows another toc on the right side permanently (default: false)                                             | ---<br>display_toc2: true <br>---                                                            |
| `post` | last_modified_at | Add extra meta-data when the post was last modified. It takes the date as you write it like a string.                       | ---<br>last_modified_at: 10.09.2023 <br>---                                                  |
| `post` | search_keywords  | Add extra data to the [search.json](#layout-:-search) file                                                                                | ---<br>search_keywords: "words i didnt use in the tags" <br>---                              |
| `post` | toTop            | true or false, shows the "To the Top" button on the bottom left (default: true)                                             | ---<br>toTop: false <br>---                                                                  |
| `post` | seoDescription   | Add a specific SEO Description for Search Engines, uses an automated excerpt otherwise. Can be at most 160 Characters long. | ---<br>seoDescription: "Just a little summary to be better found in Search Engines =)" ---<br>|
| `post` | noheader         | Disable the whole header and only show the Content. (default: false)                                                        | ---<br>noheader: true <br>---                                                                |
| `post` | searchable       | The post wont be included in the search.                                                                                    | ---<br>searchable: false <br>---                                                             |
| `post` | show_supplements | The supplements (date, readtime, tags...) wont be shown.                                                                    | ---<br>show_supplements: false<br><br>---                                                 |
| `post` | comments_id      | If you want to enable comments (hosted on Github - needs the neccessary config set)                                         | ---<br>comments_id: 1<br><br>---                                                 |
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


# whislist

- more colors
