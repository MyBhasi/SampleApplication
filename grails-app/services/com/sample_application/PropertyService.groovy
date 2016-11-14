package com.sample_application

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

    def save(PropertyCO propertyCO, MultipartFile file) {

        String m;

        if (!file.isEmpty()) {
            m = "/home/anuj/project/photo/"
            m = m + file.getOriginalFilename()
            file.transferTo(new File(m))
        }


        MyUser myUser = springSecurityService.currentUser
        println "property service"
        println propertyCO.city
        if (propertyCO.propertyType == "Residential") {
            println myUser
            Property property = new Home(address: propertyCO.address, pincode: propertyCO.pincode, city: propertyCO.city, price: propertyCO.price, propertyFor: propertyCO.propertyFor, bedRoom: propertyCO.bedRoom, postedBy: myUser, imageLocation: m).save(failOnError: true)

        }
        if (propertyCO.propertyType == "Commercial") {
            println propertyCO.city
            println myUser
            Property property = new Office(address: propertyCO.address, pincode: propertyCO.pincode, city: propertyCO.city, price: propertyCO.price, size: propertyCO.size, postedBy: myUser, propertyFor: propertyCO.propertyFor, imageLocation: m).save(failOnError: true)
        }
    }

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
}
