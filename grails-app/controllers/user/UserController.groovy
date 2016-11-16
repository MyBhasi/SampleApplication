package user

import com.sample_application.User
import com.sample_application.myuser.MyUser
import com.sample_application.property.Property
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured

class UserController {
    SpringSecurityService springSecurityService

    @Secured('IS_AUTHENTICATED_FULLY')
    def index() {

        println "in  user controller"
        User user = springSecurityService.currentUser
        Set<Property> set = user.property
        render(view: "dashboard", model: [set: set])

    }

    @Secured('IS_AUTHENTICATED_FULLY')
    def index1() {

    }

    @Secured('IS_AUTHENTICATED_FULLY')
    def test() {

    }
}
