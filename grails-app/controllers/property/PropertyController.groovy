package property

import com.property.PropertyCO
import com.sample_application.PropertyService
import com.sample_application.RegistrationService
import com.sample_application.myuser.MyUser
import com.sample_application.property.Property
import grails.plugin.springsecurity.SpringSecurityService
import org.springframework.security.access.annotation.Secured
import org.springframework.web.multipart.MultipartHttpServletRequest

class PropertyController {
    PropertyService propertyService
    SpringSecurityService springSecurityService

    def index() {

        render "i m in proprty"
    }

    @Secured('permitAll')
    def rentProperties() {
        String property = params.property
        List<Property> list = propertyService.getRentalProperties(property)
        render(view: "/property/showRental", model: [list: list])

    }

    @Secured('permitAll')
    def saleProperties() {
        String property = params.property
        List<Property> list = propertyService.getSaleProperties(property)
        render(view: "/property/showSale", model: [list: list])

    }


    @Secured(['ROLE_OWNER','ROLE_AGENT'])
    def save(PropertyCO propertyCO) {

        println propertyCO.price

        println request.class
        println propertyCO.bedRoom
        println propertyCO.address
        println propertyCO.propertyFor

        println "i  m  in  save"
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
        def file = mpr.getFile('image')
        if (propertyCO.validate()) {
            println " i m  validate"
            propertyService.save(propertyCO, file)
            render(view: "/user/userdashboard", model: [sucess: "you  have sucessfully submitted property"])

        } else {
            propertyCO.errors.allErrors.each { err ->
                println "${err}"
            }
            render(view: "/user/userdashboard", model: [err: propertyCO])
        }

    }

    @Secured('IS_AUTHENTICATED_ANONYMOUSLY')
    def reterieve() {
        println params.city
        println params.pricerange
        println params.category
        if (params.city && params.pricerange && params.category) {
            println "i m  in"

            List<Property> list = propertyService.reterieve(params)
            println "time to render"

            println list.size()
            render(view: "/dashboard/landing", model: [list: list])
        } else {
            render(view: "/dashboard/landing", model: [err: "it seems  you entered unsufficient value to find"])
        }
    }


    @Secured(['ROLE_OWNER','ROLE_AGENT'])
    def postedProperty() {
        MyUser user = springSecurityService.currentUser
        println "posted Property"
        Set<Property> set = user?.property
        println set
        render(view: "/user/postedProperty", model: [set: set])

    }
}
