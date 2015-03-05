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
    apikey = (apikey ? '').replace(/[^a-zA-Z0-9]/g, '')

    if apikey
        $('code span').each (i, el) ->
            el.innerHTML = el.innerHTML.replace '&lt;your api key here&gt;', apikey
            el.innerHTML = el.innerHTML.replace 'YOUR API KEY', apikey

    # Scroll to considering header
    scrollToHash = (el) ->
        hash = el.split '#'
        headerHeight = $('.site-header').height()

        if ($('#hidden-mobile').is(':hidden'))
            headerHeight = 0 

        hashEl = $('a[name="' + hash[1] + '"]')
        if !hashEl.length 
            hashEl = $('#' + hash[1])

        if !hashEl.length
            return

        $('html, body').animate({
            scrollTop: Math.round hashEl.offset().top - headerHeight
        }, 400)

        window.location.hash = hash[1]
        false

    $('[href*="#"]').click ->
        scrollToHash($(this).attr('href'))

    $(document).ready ->
        if window.location.hash
            scrollToHash(window.location.hash)

    return


) jQuery
