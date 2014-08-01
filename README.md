PriceWaiter Developer Documentation
===

## Installation
1. Clone this repository.
2. Run `bundle install && bower install && npm install' in the repository. You may need to use sudo.
3. Run `jekyll build`.
4. Configure your webserver to serve from `/{repo-dir}/_site/`

## How it works
This is a [Jekyll](http://jekyllrb.com/) site. It uses [Rouge](https://github.com/jneen/rouge) for syntax highlighting,
but otherwise uses standard markdown provided by [Kramdown](http://kramdown.gettalong.org/).

## Hacking
To make changes to the site, navigate to the root of the repository and execut `jekyll build --watch`. This will
spawn a Jekyll process that monitors the file system for changes.

CSS is generated by parsing the [Less](http://lesscss.org/) files in the `css` and `less` directories. Note that
partials are stored in the _sass directory.
