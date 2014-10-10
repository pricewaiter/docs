PriceWaiter Developer Documentation
===

## Installation
1. Clone this repository.
2. Run `bundle install` in the repository. You may need to use sudo.
3. Run `jekyll build`.
4. Configure your webserver to serve from `/{repo-dir}/_site/`

### Previewing
* Run `jekyll serve --watch` to build, serve and watch
* Visit: [http://localhost:4000](http://localhost:4000)

## How it works
This is a [Jekyll](http://jekyllrb.com/) site, using standard markdown
provided by [Kramdown](http://kramdown.gettalong.org/).

---

## SCSS

### Compiling and resources
* Uses [Suzy](http://susy.oddbird.net/) ruby gem for grid framework generation.

---

## Hacking
To make changes to the site, navigate to the root of the repository and execut `jekyll build --watch`. This will
spawn a Jekyll process that monitors the file system for changes.
