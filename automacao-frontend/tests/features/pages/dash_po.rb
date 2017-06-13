    class DashPage < SitePrism::Page
        element :view_title, '#flash'
        element :close, 'a[href="#"]'
        element :logout_button, 'a[href="/logout"]'

        def do_logout
            close.click
            logout_button.click
        end
    end 