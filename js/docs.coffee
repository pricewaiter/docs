---
---
(($) ->

    # Tables get borked on mobile, put them in a wrapper
    $('table').wrap('<div class="table-wrap"></div>')

    # Mobile menu toggle
    $('#nav-toggle').click ->
        menu = $('#sidenav')

        if menu.is(':hidden')
            menu.slideDown()
        else
            menu.slideUp()

        false

    # if we see apikey query string, store in localStorage
    apikey_search = location.search.match /apikey=(.*)/
    if apikey_search
        window.localStorage?.setItem 'apikey', apikey_search[1]

    # replace actual apikey if it's in localStorage
    apikey = window.localStorage?.getItem 'apikey'
    if apikey
        $('code span').each (i, el) ->
            el.innerHTML = el.innerHTML.replace '&lt;your api key here&gt;', apikey
            el.innerHTML = el.innerHTML.replace 'YOUR API KEY', apikey

    return

) jQuery
