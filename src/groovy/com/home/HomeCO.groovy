package com.home

import com.sample_application.property.Property
import grails.validation.Validateable

/**
 * Created by anuj on 16/11/16.
 */

@Validateable
class HomeCO {
    String address
   Integer  pincode
    String city
    String propertyFor
    byte[] image
Long price
    String bedRoom
 Integer size
    String parkingFacility
    String facing
 Integer floorNo
    static constraints={
        importFrom Property
        city  nullable: false
        pincode nullable: false
        parkingFacility blank: false ,nullable: false
        facing blank: false,nullable: false
        floorNo nullable: false,min: 0
        price nullable: false
        bedRoom nullable:false
        size nullable: false,min: 0
    }





}
