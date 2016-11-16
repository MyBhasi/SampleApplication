package com.sample_application.office

import com.sample_application.User
import com.sample_application.property.Property
import dashboard.DashboardController

class Office extends Property {

    Date dateCreated
    int floorNo
    boolean parkingFacility
    boolean cafeteriaAvailability

    static constraints = {
        parkingFacility blank: false
        cafeteriaAvailability blank: false

    }

    static mapping = {
        discriminator("Office")
    }
}
