package com.sample_application

import com.home.HomeCO
import com.officeCO.OfficeCO
import com.property.PropertyCO
import com.sample_application.home.Home
import com.sample_application.myuser.MyUser
import com.sample_application.office.Office
import com.sample_application.property.Property
import grails.plugin.springsecurity.SpringSecurityService
import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile

@Transactional
class PropertyService {
    SpringSecurityService springSecurityService

    List<Property> getRentalProperties(String property) {
        if (property == 'commercial') {
            List<Property> list = Office.findAllByPropertyFor('rent')
            return list
        } else {

            List<Property> list = Home.findAllByPropertyFor('rent')
            return list
        }

    }

    List<Property> getSaleProperties(String property) {
        if (property == 'commercial') {
            List<Property> list = Office.findAllByPropertyFor('sale')
            return list
        } else {

            List<Property> list = Home.findAllByPropertyFor('sale')
            return list
        }

    }

//    def save(PropertyCO propertyCO, MultipartFile file) {
//
//        String m;
//
//        if (!file.isEmpty()) {
//            m = "/home/anuj/project/photo/"
//            m = m + file.getOriginalFilename()
//            file.transferTo(new File(m))
//        }
//
//
//        User myUser = springSecurityService.currentUser
//        println "property service"
//        println propertyCO.city
//        if (propertyCO.propertyType == "Residential") {
//            println myUser
//            Property property = new Home(address: propertyCO.address, pincode: propertyCO.pincode, city: propertyCO.city, price: propertyCO.price, propertyFor: propertyCO.propertyFor, bedRoom: propertyCO.bedRoom, postedBy: myUser, imageLocation: m).save(failOnError: true)
//
//        }
//        if (propertyCO.propertyType == "Commercial") {
//            println propertyCO.city
//            println myUser
//            Property property = new Office(address: propertyCO.address, pincode: propertyCO.pincode, city: propertyCO.city, price: propertyCO.price, size: propertyCO.size, postedBy: myUser, propertyFor: propertyCO.propertyFor, imageLocation: m).save(failOnError: true)
//        }
//    }

    List<Property> reterieve(Map params) {
        println params.city
        String[] s = params.pricerange.split('-')
        def createria = Property.createCriteria()
        int i = s[0].toInteger() * 1000000
        int j = s[1].toInteger() * 1000000
        println i
        println j
        if (params.category == 'Commercial') {

            List<Property> list = createria.list {
                eq('city', params.city)
//            between(price:s[0].toInteger()*1000000,s[1].toInteger()*1000000 )
                between('price', s[0].toLong() * 1000000, s[1].toLong() * 1000000)
            }
            return list
        } else {

            List<Property> list = createria.list {
                eq('city', params.city)
                between('price', s[0].toLong() * 1000000, s[1].toLong() * 1000000)

            }
            return list
        }


    }

    def saveHome(HomeCO homeCO, MultipartFile file) {
        String m;

        if (!file.isEmpty()) {
            m = "/home/anuj/project/photo/"
            m = m + file.getOriginalFilename()
            file.transferTo(new File(m))
        }
        User myUser = springSecurityService.currentUser
        println "property service"

        Property property1 = new Home(address: homeCO.address, pincode: homeCO.pincode as int
                , city: homeCO.city, price: homeCO.price as long, imageLocation: m, postedBy: myUser, bedRoom: homeCO.bedRoom, size: homeCO.size, floorNo: homeCO.floorNo, facing: homeCO.facing, propertyFor: homeCO.propertyFor, parkingFacilty: homeCO.parkingFacility == 'yes' ? true : false).save(failOnError: true)


    }

    def saveOffice(OfficeCO officeCO, MultipartFile file) {
        String m;

        if (!file.isEmpty()) {
            m = "/home/anuj/project/photo/"
            m = m + file.getOriginalFilename()
            file.transferTo(new File(m))
        }
        User myUser = springSecurityService.currentUser
        println "property service"

        Property property1 = new Office(address: officeCO.address, pincode: officeCO.pincode as int
                , city: officeCO.city, price: officeCO.price as long, imageLocation: m, postedBy: myUser, size: officeCO.size, floorNo: officeCO.floorNo, propertyFor: officeCO.propertyFor, parkingFacilty: officeCO.parkingFacility == 'yes' ? true : false, cafeteriaAvailability: officeCO.cafeteriaAvailibility == 'yes' ? true : false).save(failOnError: true)


    }


    def updateHome(HomeCO homeCO, MultipartFile file, int propertyID) {
        String m;

        if (!file.isEmpty()) {
            m = "/home/anuj/project/photo/"
            m = m + file.getOriginalFilename()
            file.transferTo(new File(m))
        }

        println "property update service"
        Home property1 = Property.findById(propertyID) as Home
        property1.address = homeCO.address
        property1.city = homeCO.city
        property1.pincode = homeCO.pincode
        property1.postedBy = springSecurityService.currentUser
        property1.price = homeCO.price as long
        property1.size = homeCO.size as int
        property1.bedRoom = homeCO.bedRoom
        property1.facing = homeCO.facing
        property1.parkingFacilty = homeCO.parkingFacility == 'yes' ? true : false
        property1.propertyFor = homeCO.propertyFor
        property1.floorNo = homeCO.floorNo
        if (m) {
            property1.imageLocation = m
        }


        property1.save(failOnError: true)

    }

    def updateOffice(OfficeCO officeCO, MultipartFile file, int propertyID1) {
        String m;

        if (!file.isEmpty()) {
            m = "/home/anuj/project/photo/"
            m = m + file.getOriginalFilename()
            file.transferTo(new File(m))
        }
        println propertyID1
        println "property update office service"

        Office property1 = Property.findById(propertyID1)
        println property1
        println property1.city
        println "bhai"
        println "address"
        property1.address = officeCO.address
        println property1.address
        property1.floorNo = officeCO.floorNo as int
        property1.postedBy = springSecurityService.currentUser
        println "city"
        property1.city = officeCO.city
        println "properttyFor"
        property1.propertyFor = officeCO.propertyFor
        println "pincode"
        property1.pincode = officeCO.pincode
        println "cafeteria"
        property1.cafeteriaAvailability = (officeCO.cafeteriaAvailibility == 'Yes' ? true : false)
        print "size"
        property1.size = officeCO.size as int
        println "parkingfacility"
        property1.parkingFacility = officeCO.parkingFacility == 'yes' ? true : false
        println "checkingcondition"
        property1.save(failOnError: true)

    }

}
