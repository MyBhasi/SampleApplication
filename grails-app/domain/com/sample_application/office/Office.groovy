package com.sample_application.office

import com.sample_application.User
import com.sample_application.property.Property
import dashboard.DashboardController

class Office extends Property {
    int size
    Date dateCreated
    static constraints = {
    }

    static mapping = {
        discriminator("Office")
    }
}
