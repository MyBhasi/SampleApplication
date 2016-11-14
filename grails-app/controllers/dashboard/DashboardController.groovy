package dashboard

import com.sample_application.RegistrationService
import com.sample_application.User
import com.sample_application.myuser.MyUser
import com.sample_application.property.Property
import com.user.UserCO
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class DashboardController {
    SpringSecurityService springSecurityService
    RegistrationService registrationService

    def landing() {

    }

    def login() {
        println "hello"

    }

    @Secured('IS_AUTHENTICATED_FULLY')
    def afterLogin() {
        println "afterLogin"
        MyUser user = springSecurityService.currentUser
        String m = user.authorities.authority.getAt(0)
        println user.admin
        if (!user.isAdmin()) {
            println "i   m  not  admin"
            if (m.equals('ROLE_OWNER') || m.equals('ROLE_AGENT')) {
                println "i   m   owner"
                redirect(controller: "user", action: "index")
            } else {
                println "i  m  customer"
                redirect(controller: "user", action: "index1")
            }
        } else {
            redirect(controller: "Admin", action: "index")

        }

    }

    def register() {

    }

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def save(UserCO userCO) {
        println userCO.role
//        render  "hello"
        if (userCO.validate()) {
            registrationService.save(userCO)

            render view:"landing"
        } else {

            userCO.errors.allErrors.each { err ->
                println "${err}"
            }

            render(view: "register", model: [userCO: userCO])
        }

    }

    @Secured('IS_AUTHENTICATED_ANONYMOUSLY')
    def renderImage() {
        int id = params.int('id')
        Property p = Property.get(id)
        println p.imageLocation
        println id
        def file = new File(p.imageLocation)
        def img = file.bytes
        response.contentType = "image/*" // or the appropriate image content type
        response.outputStream << img
        response.outputStream.flush()

    }
}
