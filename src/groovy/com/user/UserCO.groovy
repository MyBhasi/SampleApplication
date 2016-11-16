package com.user

import com.sample_application.User
import com.sample_application.myuser.MyUser
import grails.validation.Validateable

@Validateable
class UserCO {
    String firstName
    String lastName
    String username
    String password
    String confirmPassword
    String phoneNo
    String role
    static constraints = {
        importFrom User

        role nullable: false, blank: false
        phoneNo nullable:false,maxSize: 10, minSize: 10, matches: "[0-9]+", validator: { val, obj ->
            if (User.findByPhoneNo(val)) {
                return "phone.unique.error"
            }
        }
        password nullable: false , minSize: 8,validator: { val, obj ->
            if (val?.equalsIgnoreCase(obj.firstName)) {
                return "password.match.error"
            }
        }
        username validator: { val, obj ->
            if (User.findByUsername(val)) {
                return "UserCo.property.username.unique.error"
            }
        }
        confirmPassword validator: { val, obj ->
            if (!val?.equals(obj.password)) {
                return "UserCO.property.confirmpassword.error"
            } else {
                true
            }

        }
    }


}





