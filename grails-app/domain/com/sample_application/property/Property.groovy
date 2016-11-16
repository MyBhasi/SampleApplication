package com.sample_application.property

import com.sample_application.User
import com.sample_application.enums.RentSale
import com.sample_application.myuser.MyUser

class Property {

    String address
    int pincode
    String city
    long price
    String imageLocation
    String propertyFor
    int size
    static belongsTo = [postedBy: User]
    static constraints = {
        address blank: false
        pincode nullable: false
        imageLocation nullable: true, blank: true
        propertyFor blank: false
        price nullable: false
        city blank: false, nullable: false
        postedBy nullable: true

    }
}
