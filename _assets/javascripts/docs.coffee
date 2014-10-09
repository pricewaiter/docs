(($) ->

    $(document).ready ->
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

        return

) jQuery