# PriceWaiter Developer Documentation

This is a [Jekyll](http://jekyllrb.com/) site, using standard markdown provided by [Kramdown](http://kramdown.gettalong.org/).

## Getting Started

### Installation
1. Clone this repository.
2. Run `bundle install` in the repository. You may need to use sudo.
3. Run `jekyll build`.
4. Configure your webserver to serve from `/{repo-dir}/_site/`

### Previewing
* Run `jekyll serve --watch` to build, serve and watch
* Visit: [http://localhost:4000](http://localhost:4000)

### Hacking
To make changes to the site, navigate to the root of the repository and execute `jekyll build --watch`. This will
spawn a Jekyll process that monitors the file system for changes.

### SASS (SCSS)

* Uses [Susy](http://susy.oddbird.net/) ruby gem for grid framework generation.

## Deployment

Currently, we're deploying with git. Here's how.
 
 1. Commit your changes and push to GitHub.
 2. Add a remote called "production": `git remote add production you@docs.pricewaiter.com:/var/www/sites/docs.pricewaiter.com`
 3. Push the branch of your choice. Examples:
  - master: `git push production master`
  - other: `git push production <branchname>`
  