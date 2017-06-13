
    class LoginPage < SitePrism::Page
        set_url '/login'
        element :view_title_logout, '#flash'
        element :username, 'input[id=username]'
        element :password, 'input[id=password]'
        element :sig_in, '.fa-sign-in'

        def with(u, p)
            username.set u 
            sleep(1)
            password.set p
            sleep(1)
            sig_in.click
        end

    end