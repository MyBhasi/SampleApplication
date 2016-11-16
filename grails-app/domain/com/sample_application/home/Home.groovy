package com.sample_application.home

import com.Facing.Facing
import com.sample_application.User
import com.sample_application.property.Property

class Home extends Property {
    Date dateCreated
    String bedRoom

    int floorNo
    //    Set<String>amenties
    boolean parkingFacilty
    Facing facing
    static constraints = {
        bedRoom blank: false
        parkingFacilty blank: false
        facing blank: false


    }
    static mapping = {
        discriminator("Home")
    }
}

