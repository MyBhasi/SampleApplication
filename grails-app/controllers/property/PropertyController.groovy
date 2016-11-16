package property

import com.home.HomeCO
import com.officeCO.OfficeCO
import com.property.PropertyCO
import com.sample_application.PropertyService
import com.sample_application.RegistrationService
import com.sample_application.User
import com.sample_application.home.Home
import com.sample_application.myuser.MyUser
import com.sample_application.office.Office
import com.sample_application.property.Property
import grails.plugin.springsecurity.SpringSecurityService
import org.springframework.security.access.annotation.Secured
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.MultipartHttpServletRequest

class PropertyController {
    PropertyService propertyService
    SpringSecurityService springSecurityService
    int propertyID

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


    @Secured(['ROLE_OWNER', 'ROLE_AGENT'])
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

    @Secured(['ROLE_OWNER', 'ROLE_AGENT'])
    def saveHome(HomeCO homeCO) {

        println homeCO.price

        println request.class
        println homeCO.address
        println homeCO.city

        println "i  m  in  save"
//        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
//        def file = mpr.getFile('image')
        if (homeCO.validate()) {
            println " i m  validate"
            MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
            def file = mpr.getFile('image')
            propertyService.saveHome(homeCO, file)
            render(view: "/user/dashboard", model: [sucess: "you  have sucessfully submitted property"])

        } else {
            homeCO.errors.allErrors.each { err ->
                println "${err}"
            }
            render(view: "/user/dashboard", model: [homeCO: homeCO])
        }

    }

    @Secured(['ROLE_OWNER', 'ROLE_AGENT'])
    def saveOffice(OfficeCO officeCO) {

        println officeCO.price

        println request.class
        println officeCO.address
        println officeCO.city
        println officeCO.floorNo

        println "i  m  in  save"

        if (officeCO.validate()) {
            println " i m  validate"
            MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
            MultipartFile file = mpr.getFile('image')
            propertyService.saveOffice(officeCO, file)
            render(view: "/user/dashboard", model: [sucess: "you  have sucessfully submitted property"])

        } else {
            officeCO.errors.allErrors.each { err ->
                println "${err}"
            }
            render(view: "/user/dashboard", model: [officeCO: officeCO])
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


    @Secured(['ROLE_OWNER', 'ROLE_AGENT'])
    def postedProperty() {
        User user = springSecurityService.currentUser
        println "posted Property"
        Set<Property> set = user?.property
        println set
        render(view: "/property/postedProperty", model: [set: set])

    }

    @Secured(['ROLE_OWNER', 'ROLE_AGENT'])
    def editHomeProperty() {
        println "in home"
        int id = params.int('id')
        propertyID=id
        println id
        Home property = Property.findById(id) as Home
        HomeCO homeCO=new HomeCO(address: property.address,pincode: property.pincode
                ,city: property.city,price: property.price ,bedRoom: property.bedRoom,size: property.size,floorNo: property.floorNo,facing: property.facing,propertyFor: property.propertyFor,parkingFacility:(property.parkingFacilty=='true'?'yes':'No'))
        println homeCO.parkingFacility
        render(view: "edit", model: [homeCO: homeCO])

    }

    @Secured(['ROLE_OWNER', 'ROLE_AGENT'])
    def editOfficeProperty() {
        println "inoffice"
        int id = params.int('id')
        propertyID=id
        println id
        Office property = Property.findById(id) as Office
        OfficeCO officeCO = new OfficeCO(address: property.address,pincode: property.pincode
                ,city: property.city,price: property.price ,size: property.size,floorNo: property.floorNo,propertyFor:property.propertyFor,cafeteriaAvailibility: (property.cafeteriaAvailability=='true'?'Yes':'No') ,parkingFacility:(property.parkingFacility=='true'?'yes':'No'))
        render view: "edit", model: [officeCO: officeCO,id:id]
    }

    @Secured(['ROLE_OWNER', 'ROLE_AGENT'])
    def deleteProperty() {

        int id = params.int('id')
        println id
        Property property = Property.findById(id)
        println property.address
        property.delete(flush: true)
        render view: "postedProperty"

    }
    @Secured(['ROLE_OWNER', 'ROLE_AGENT'])
    def updateHome(HomeCO homeCO) {

println "i m  bhaskar"
        println propertyID
        if (homeCO.validate()) {
            println " i m  validate"
            MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
            def file = mpr.getFile('image')
            propertyService.updateHome(homeCO, file,propertyID)
            render(view: "/property/postedProperty", model: [sucess: "you  have sucessfully updated property"])

        } else {
            homeCO.errors.allErrors.each { err ->
                println "${err}"
            }
            render(view: "/property/edit", model: [homeCO: homeCO])
        }

    }

    @Secured(['ROLE_OWNER', 'ROLE_AGENT'])
    def updateOffice(OfficeCO officeCO) {
println propertyID
//        println Property.findById(id).city
        if (officeCO.validate()) {
            println " i m  validate"
            MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
            MultipartFile file = mpr.getFile('image')
            propertyService.updateOffice(officeCO, file,propertyID)
            render(view: "/posted/property", model: [sucess: "you  have sucessfully submitted property"])

        } else {
            officeCO.errors.allErrors.each { err ->
                println "${err}"
            }
            render(view: "/property/edit", model: [officeCO: officeCO])
        }


    }
}
