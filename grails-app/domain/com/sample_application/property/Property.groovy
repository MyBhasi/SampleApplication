package com.sample_application.property

import com.sample_application.enums.RentSale
import com.sample_application.myuser.MyUser

class Property {

    String address
    int pincode
    String city
    long price
    String imageLocation
    String propertyFor
    static belongsTo = [postedBy: MyUser]
    static constraints = {
        address unique: true, blank: false
        pincode blank: false
        imageLocation nullable: true, blank: true
        propertyFor blank: false
        price null: false
        city blank: true, nullable: true
        postedBy nullable: true

    }
}
