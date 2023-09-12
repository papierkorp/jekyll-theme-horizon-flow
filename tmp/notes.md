# Erste Schritte

```bash
jekyll serv #startet den eingebauten Server
```

## Konfiguration

findet über `_config.yml` statt

Default Konfigurationen: https://jekyllrb.com/docs/configuration/default/

## Post Default Layout

http://jekyllrb.com/docs/configuration/front-matter-defaults/

```bash
vi _config.yml
	defaults:
	  -
	    scope:
	      path: "" # ein leerer string an dieser Stelle bezieht alle Projektateien ein
	      type: "posts"
	    values:
	      layout: "default"
```

## Front Matter (Metadaten)

Wird im Post erstellt, und ganz oben mit 3x `-` eingeleitet und beendet.
Wird von Jekyll gelesen und verwendet.

Hier können auch eigene Variablen festgelegt und benannt werden.

Diese Variablen können dann in Templates, Schleifen und IF-Abfragen verwendet werden.

In `_config` können unter `default: values:` default Werte festgelegt werden.

Beispiel:

```yaml
---
layout: post
title:  "Welcome to Jekyll!"
date:   2023-06-06 13:13:20 +0200
categories: jekyll update
---
```


## Anderes Theme installieren

https://github.com/StartBootstrap/startbootstrap-clean-blog-jekyll


```bash
vi Gemfile #gem "jekyll-theme-clean-blog".
bundle install
vi _config.yml #theme: jekyll-theme-clean-blog
bundle exec jekyll serve
```


## markdown

als default markdown wird https://kramdown.gettalong.org/quickref.html verwendet.


# Ideen

https://aguidehub.com/about/

```
Hey there, what’s up?
aGuideHub is a tech blog created with the sole purpose of explaining complex tech in a simple and concise way thus creating value for budding developers out there.

Here you will find blogs on the latest tech, tutorials on programming languages, explanations to data structure and algorithm concepts and questions, and much more… So stay tuned!!
```


- Inhalt: https://mixable.blog/

```
This blog is a collection of helpful snippets and topics for your daily work with modern media. A colorful mix of digital topics.
```

https://jamstackthemes.dev/demo/theme/jekyll-type-on-strap-theme/
https://www.itnator.net/
https://jamstackthemes.dev/theme/forever-jekyll/
https://jamstackthemes.dev/demo/theme/dark-poole/

# Installation

Laut Tutorial: https://jekyllrb.com/docs/step-by-step/01-setup/

```bash
sudo apt-get install ruby-full build-essential zlib1g-dev

#Avoid installing RubyGems packages (called gems) as the root user. Instead, set up a gem installation directory for your user account. The following commands will add environment variables to your ~/.bashrc file to configure the gem installation path:

echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

gem install jekyll bundler
```


gem install kramdown rouge


**Neues Projekt**

```bash
#1 Möglichkeit
jekyll new myblog
cd myblog
bundle install
bundle exec jekyll serve

#2. Möglichkeit
vi Gemfile #gem "jekyll"
bundle init
```


**Upgrade**

```bash
jekyll -v
gem update jekyll
```



# Publish in GitPages

https://docs.github.com/de/pages/quickstart
https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll

Bei [github](https://github.com/) ein neues Repository mit dem Repository-Name: papierkorp.github.io hinzufügen.
Anschließend im Repo in `Settings - Pages - Source - Deploy from a branch` und `Settings - Pages - Source - Branch - main`

Seite ist jetzt erreichbar unter: https://papierkorp.github.io

Custom Domain auch in github im Repo unter `Settings - Pages - Custom Domain` eintragen und im DSN den CNAME auf `papierkorp.github.io` verlinken.




## SEO

https://jekyllrb.com/docs/step-by-step/10-deployment/

https://github.com/jekyll/jekyll-sitemap
https://github.com/jekyll/jekyll-seo-tag





# Eigenes Theme erstellen

Offizielle Doku: https://jekyllrb.com/docs/themes/

Alle templates und Layouts werden in einem Ruby gem gespeichert. Das Ruby gem wird später durch den `build` command erstellt und ins Ruby Repo gepusht.

Kommentare: https://mademistakes.com/mastering-jekyll/static-comments/, https://dev-yakuza.posstree.com/en/jekyll/utterances/, https://dc25.github.io/myBlog/2017/06/24/using-github-comments-in-a-jekyll-blog.html, https://donw.io/post/github-comments/
 

Autoreload: https://talk.jekyllrb.com/t/jekyll-not-watching-or-auto-regenerating-sass/1040/5 

**Vorlage.png erstellen**

Hab mir [Lunacy](https://icons8.de/lunacy) installiert und erstmal durch folgende Inspirationen eine Design erstellt:

- Navigation/Layout: https://github.com/daattali/beautiful-jekyll
- Archiv/Search/Cards/TOC: https://chirpy.cotes.page/archives/
- Categories/Navi: https://github.com/mmistakes/so-simple-theme
- Categories/TOC: https://jeffreytse.github.io/jekyll-theme-yat/categories.html
- Home/Cards/TOC/Category: https://unifreak.github.io/ / https://github.com/UniFreak/jekyll-theme-textalic
- Cards: https://mmistakes.github.io/jekyll-theme-hpstr/
- TOC: https://mmistakes.github.io/minimal-mistakes/docs/quick-start-guide/
- Header/Footer: https://github.com/rdyar/strapless
- Farben: https://www.jvt.me/


![image](./_includes/blog_light.png)



**Theme erstellen**

- Beachten
	+ [Jekyll Remote Theme](https://github.com/benbalter/jekyll-remote-theme) beachten: => Plugins müssen [Github Approved sein](https://learn.siteleaf.com/themes/jekyll-plugins/#github-pages-approved-plugins&gsc.tab=0)
	+ [Github Pages - Plugins approved](https://pages.github.com/versions/)
	+ Jekyll inkludiert einen SASS/SCSS Compiler => SASS statt CSS verwenden
		* [SASS/SCSS](#sass) erweitert CSS und macht CSS deutlich flexibler wie bessere Syntax, Nesting, Variablen, Mixins... 
- Links
	+ Gemfile erstellen: https://medium.com/@jameshamann/creating-your-own-jekyll-theme-gem-1f8180a0e4b8
	+ Erste Schritte: https://www.siteleaf.com/blog/making-your-first-jekyll-theme-part-2/
	+ Liquid (Bibliothek um Layouts zu erstellen): https://shopify.github.io/liquid/basics/introduction/
	+ HTML5 Hilfe: https://html5boilerplate.com/


```bash
jekyll new-theme papierkorp-theme
tree papierkorp-theme
	├── Gemfile 					#verweist auf .gemspec
	├── LICENSE.txt					
	├── README.mkdir				
	├── _data						
	├── _includes					#templates
	├── _layouts					#Default Styles erstellen
	│   ├── default.html 			
	│   ├── page.html 				
	│   └── post.html 				
	├── _sass						#css
	├── assets						#static files (main styles.scss)
	└── papierkorp-theme.gemspec	#alle ruby gem Daten (Version, Name, Beschreibung...)

cd papierkorp-theme
```

Als erstes index.html und Beispielposts erstellen:

```bash
vi index.html #{{ content }} ist Liquid Syntax (siehe Link oben)

	---
	title: Home
	layout: post
	---
	{{ content }}

mkdir _posts #Beispielposts erstellen
vi ./_posts/2023-06-01-example-post.md
vi vi ./_config.yml #Default config.yml mitgeben

bundle exec jekyll clean 
bundle exec jekyll serve --force-polling --livereload --trace #lokalen Server für das Theme starten

```

Style implementieren:

```bash
vi Gemfile
	gem 'jekyll-sass-converter'
mkdir _sass
mkdir /_sass/header
mkdir assets
vi /_sass/papierkorp-theme.scss
	@import "_header.scss";
	@import "_base.scss";
	@import "_variables.scss";
vi /assets/styles.scss
	---

	---
	@charset "utf-8";
	@import "papierkorp-theme";
vi /_includes/header.html
	<link rel="stylesheet" href="{{ '/assets/style.css' | relative_url }}">
```


Basic Layout:

```html
<header>
	<hr />
	<nav></nav>
</header>

<main>
	<section>page/home, categories, archive, search layouts</section>
	<article>post layout</article>
</main>

<footer>
	<aside>Recent Posts...</aside>
	<aside><a>Links</a></aside>
</footer>
```

Available Layouts:

- page/home
- post
- categories
- archive
- search



## Mit neuen Projekt testen

```bash
#cd ./develop/papierkorp-theme
gem build jekyll-theme-horizon-flow.gemspec #erstellt eine Gemfile im Ordner, dieses gem File (Pfad) bei meiner Jekyll Seite hinzufügen

#cd ./develop
jekyll new testblog
vi Gemfile
	gem "jekyll-theme-horizon-flow", path: "/mnt/c/develop/privat/jekyll-theme-horizon-flow/"
bundle
vi _config.yml
	theme: jekyll-theme-horizon-flow
bundle exec jekyll serve --force-polling --livereload --trace
```



## Live gehen

Bei [Ruby Gems](https://rubygems.org/) registrieren um das Theme später hochzuladen.

```bash
#Erstellen
vi ./screenshot.png #screenshot.png in root dir speichern
vi jekyll-theme-horizon-flow.gemspec #Zum Finish die gemspec Datei mit Version, Author, Files befüllen
gem build jekyll-theme-horizon-flow.gemspec
gem push jekyll-theme-horizon-flow-0.1.1.gem
gem yank jekyll-theme-horizon-flow #theme wieder löschen falls Fehler passiert sind
```


**BEACHTEN**

- [Cookies](http://www.plainionist.net/Blogging-with-Jekyll-Legal-Privacy/)
- [Impressum Generator](https://www.e-recht24.de/impressum-generator.html)
- [Robots.txt](http://www.plainionist.net/Blogging-with-Jekyll-Legal-Privacy/)
- [SEO1](https://neilpatel.com/de/blog/7-wichtige-html-tags-die-einen-seo-experten/)
- [SEO2](http://www.plainionist.net/Blogging-with-Jekyll-SEO/)

## Todo


- [Cookies](http://www.plainionist.net/Blogging-with-Jekyll-Legal-Privacy/)
- [Robots.txt](http://www.plainionist.net/Blogging-with-Jekyll-Legal-Privacy/)
- more colors?



## Tipps und Tricks

### Markdown File in HTML einbinden

**xxx.html**
```
{% capture markdown_content %}
  {% include about_me.md %}
{% endcapture %}

{% assign html_content = markdown_content | markdownify %}

{{ html_content }}


{% assign stripped_content = html_content | strip %}{% if stripped_content.size > 0 %}{% endif %}
```

### page Variable ändern

```
{% if page.about_layout == 'card' %}
	{% assign page.about_layout = 'card_about' %}
{% endif %}

<div class="{% if page.about_layout %}{{ page.about_layout }}{% else %}card_site_description{% endif %}">
```

### Code Highlighter

Entweder mit `gem install kramdown rouge` kramdown + rouge installieren oder durch `vi _config.yml`

```
markdown: kramdown

kramdown:
  input: GFM
  syntax_highlighter: rouge
```

verwenden.

Danach entweder mit `rougify help style && rougify style monokai > _sass/external/_highlighter_rougify_monokai.scss` eine vorgefertigte Version verwenden oder mit `vi _sass/external/_own_highlighter.scss` eine eigene Datei anlegen.

Durch:

```css
.highlight pre * {
	font-family: monospace, monospace;
	font-size: 1em;
}
```

sicherstellen, dass überall monospace verwendet wird...

Vorlagen:
- [rouge-themes](https://mazhuang.org/rouge-themes/)
- [pygments-themes](https://jwarby.github.io/jekyll-pygments-themes/languages/ruby.html)

### Multi Language

https://matthewlincoln.net/2020/03/01/multilingual-jekyll.html
https://juan.pallares.me/configure-jekyll-multi-language-without-plugin/

1. Neue Ordner anlegen: `_posts/de` und `_posts/en` um die Artikel zu gliedern
2. Default Front-Matter festlegen (damit nicht bei jedem Post lang: eingetragen werden muss) dazu `_config.yml` bearbeiten:

```yaml
defaults:
  -
    scope:
      path: "_posts/de"
    values:
      lang: "de"
  -
    scope:
      path: "_posts/en"
    values:
      lang: "en"
```

3. Ordner + Datei für Translations anlegen: `_data/translation.yml` mit:

```yaml
readtime:
  en: Reading Time
  de: Lesezeit
```

4. data Variable verwenden (z.B. `_layouts/post.html`):

```html
<span class="reading-time" title="Estimated read time">
	{{ site.data.translation.readtime[page.lang] }}: {% include read_time.html %}
</span>
```

### Front-Matter Variable für eine config verwenden

**_config**

```yaml
defaults:
  -
    scope:
      path: ""
    values:
      code_lines: false
```

**layout**

```liquid
{% if page.code_lines or layout.code_lines or site.code_lines %}
  # Configuration for code lines is enabled
{% else %}
  # Configuration for code lines is disabled
{% endif %}

```

### Alternative zu posts Ordner (Collections)

[Collections](https://jekyllrb.com/docs/collections/)
Odner erstellen:

`./_pages`
`./_blog`

in der config:

```yaml
collections:
	pages:
		output: true
		permalink: /:collection/:path/
	blog:
		output: true
		permalink: /:collection/:path/
```

### Back to Top

```
<a href="#page-title" class="back-to-top">{{ site.data.text[site.locale].back_to_top | default: 'Back to Top' }} &uarr;</a>
```


### Search bar

https://blog.webjeda.com/instant-jekyll-search/

### spec.files (gemspec) anpassen

https://guides.rubygems.org/specification-reference/#files

Beispiel:

```
spec.files = Dir['_includes/**/*', '_layouts/**/*', '_posts/**/*', '_sass/**/*', 'assets/**/*'] +
               ['LICENSE.txt', 'README.md', 'archive.html', 'categories.html', 'search.html', 'search.json', 'tags.html', '_config.yml']
```



# SASS

```sass
#Syntax .sass
nav
	ul
		margin: 0
		padding: 0
		list-style: none
	li
		display: inline-block
	a
		display: block
		padding: 6px 12px
		text-decoration: none
```

```scss
#syntax .scss
nav {
	ul {
		margin: 0
		padding: 0
		list-style: none
	}

	li {
		display: inline-block
	}

	a {
		display: block
		padding: 6px 12px
		text-decoration: none
	}
}




#variables
$red: hsl(0, 100%, 50%);

.button.danger {
	color: $red;
	border: 1px solid $red;
}




#Nesting
#&=refer to parent selector
.btn {
	&:focus {}
	&:hover {}
	&:active {}
}




#Funktionalität
@mixin flex-column($color) {
	display: flex;
	flex-direction: column;
	background-color: $color;
}

.card {
	@include flex-column(black);
}

@mixin theme-colors($theme) {
	@if $theme == 'light' {} @else {} 
}

$sizes: 40px, 50px, 80px;
@each $size in $sizes {
	.icon-#{$size} {
		font-size: $size;
	}
}

@function sum($numbers) {
	$sum: 0;

	@each $number in $numbers {
		$sum: $sum + $number;
	}

	@return $sumn;
}

.card {background: lighten(green, 25%)}



#Inheritance
.base-style {
  font-size: 18px;
  line-height: 1.6;
}

.heading {
  @extend .base-style;
  font-weight: bold;
}
```


## Tipps und Tricks

### width abhängig von anzahl der kinder

```scss
@mixin child-count($n) {
  @if $n == 1 {
    &:first-child:nth-last-child(1) {
      @content;
    }
  }
  @else {
    &:first-child:nth-last-child(#{$n}),
    &:first-child:nth-last-child(#{$n}) ~ & {
      @content;
    }
  }
}

/* @include with-count(1) {} */

/*  
footer aside section:only-child {
    min-width: 100%;
}

footer aside section:first-child:nth-last-child(2),
footer aside section:first-child:nth-last-child(2) ~ section {
    min-width: 50%;
}

footer aside section:first-child:nth-last-child(3),
footer aside section:first-child:nth-last-child(3) ~ section {
    min-width: 33.3333%;
}

footer aside section:first-child:nth-last-child(4),
footer aside section:first-child:nth-last-child(4) ~ section {
    min-width: 25%;
}

footer aside section:first-child:nth-last-child(5),
footer aside section:first-child:nth-last-child(5) ~ section {
    min-width: 20%;
}
*/
```