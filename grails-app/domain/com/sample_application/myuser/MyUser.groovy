package com.sample_application.myuser

import com.sample_application.User

import com.sample_application.property.Property

class MyUser extends User {
    String firstName
    String lastName
    String phoneNo
    boolean admin

    static hasMany = [property: Property]

    static constraints = {

        firstName blank: false
        lastName blank: false
        admin null: true
        phoneNo unique: true, maxSize: 10, minSize: 10, blank: true, matches: "[0-9]+"
        phoneNo nullable: true
        password validator: { val, obj ->
            if (val?.equalsIgnoreCase(obj.firstName)) {
                return false
            }
        }

    }
}
