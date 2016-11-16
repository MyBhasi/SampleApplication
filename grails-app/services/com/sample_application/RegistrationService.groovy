package com.sample_application

import com.sample_application.myuser.MyUser
import com.user.UserCO
import grails.transaction.Transactional

@Transactional
class RegistrationService {

    def serviceMethod() {

    }

    def save(UserCO userCO) {
        println "service"
        String r = "ROLE_${userCO.role.toUpperCase()}"

        User user = new User(username: userCO.username, password: userCO.password, admin: false, firstName: userCO.firstName, lastName: userCO.lastName, phoneNo: userCO.phoneNo,).save(failOnError: true)
        Role role = Role.findOrSaveWhere(authority: r)
        UserRole.create(user, role, true)


    }
}
