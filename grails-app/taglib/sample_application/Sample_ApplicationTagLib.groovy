package sample_application

import com.sample_application.Role
import com.sample_application.User
import com.sample_application.UserRole
import com.sample_application.myuser.MyUser
import com.sample_application.property.Property
import grails.plugin.springsecurity.SpringSecurityService

class Sample_ApplicationTagLib {


    static defaultEncodeAs = [taglib: 'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    def user = { attr, body ->
        MyUser user = attr.name
        println "heoo"
        def roles = user.authorities
        String s = roles.getAt(0)
//        out<< "Contact:(${s.substring(20)}"
        out << body(s.substring(20))
    }
    def ch = { attr, body ->
        println "${attr.val2}${attr.val1}"
        if (attr.val2 == null) {
            println "${attr.val2}${attr.val1}"
            attr.val1?.size() == 0 ? out << body("!No  result found") : false
        }
    }

    def post = { attr, body ->
        MyUser user = MyUser.get(attr.userID)
        Set<Property> set = user.property
        println set
        out << g.render(template: '/user/template1', model: [s: set, a: "bhaskar"])

    }
}
