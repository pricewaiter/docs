# PriceWaiter Developer Documentation

This is a [Jekyll](http://jekyllrb.com/) site, using standard markdown provided by [Kramdown](http://kramdown.gettalong.org/).

## Getting Started

### Installation
1. Clone this repository.
2. Run `bundle install` in the repository. You may need to use sudo.
3. Run `bundle exec jekyll build`.
4. Configure your webserver to serve from `/{repo-dir}/_site/`

### Previewing
* Run `bundle exec jekyll serve -w` to build, serve and watch
* Visit: [http://localhost:4000](http://localhost:4000)

### Hacking
To make changes to the site, navigate to the root of the repository and execute `bundle exec jekyll serve -w`. This will
spawn a Jekyll process that monitors the file system for changes.

### SASS (SCSS)

* Uses [Susy](http://susy.oddbird.net/) ruby gem for grid framework generation.

## Deployment

Commit changes to the `gh-pages` branch.

Github pages takes care of the build, and publishes to https://pricewaiter.github.io/docs/. The relative paths are a bit messed there, but we publish a AWS Cloudfront domain in front of that, which remaps tho `/docs` subfolder to root. #magic and https://docs.pricewaiter.com is served!
 
