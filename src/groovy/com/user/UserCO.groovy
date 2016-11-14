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
        importFrom MyUser
        role nullable: false, blank: false
        phoneNo blank: false, validator: { val, obj ->
            if (MyUser.findByPhoneNo(val)) {
                return "userCO.property.phone.unique.error"
            }
        }
        password minSize: 8, maxSize: 15
        username validator: { val, obj ->
            if (MyUser.findByUsername(val)) {
                return "UserCo.property.username.unique.error"
            }
        }
        confirmPassword validator: { val, obj ->
            if (!val?.equals(obj.password)) {
                return "UserCo.property.confirmpassword.error"
            } else {
                true
            }

        }
    }


}





