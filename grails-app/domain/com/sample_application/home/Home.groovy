package com.sample_application.home

import com.sample_application.User
import com.sample_application.property.Property

class Home extends Property {
    Date dateCreated
    String bedRoom

    static constraints = {
        bedRoom blank: false
    }
    static mapping = {
        discriminator("Home")
    }
}

