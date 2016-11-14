package admin

import com.user.UserCO
import grails.plugin.springsecurity.annotation.Secured

class AdminController {
    @Secured('IS_AUTHENTICATED_FULLY')
    def profile() {
        render view: "/user/userdashboard"
    }

    def index() {}

}
