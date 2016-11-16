package com.officeCO

import com.sample_application.property.Property
import grails.validation.Validateable

/**
 * Created by anuj on 16/11/16.
 */
@Validateable
class OfficeCO {
    String address
   Integer pincode
    String city
    String propertyFor
    byte[] image
   Long price
Integer size
    String parkingFacility
    String cafeteriaAvailibility
 Integer floorNo
    static constraints={
        importFrom Property
        pincode nullable: false
        parkingFacility blank: false ,nullable: false
        floorNo blank:false,min: 0
        price blank:false
     cafeteriaAvailibility blank: false,nullable: false
        size min: 0

    }
}
