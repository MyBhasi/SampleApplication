package sample_application

import com.sample_application.Role
import com.sample_application.User
import com.sample_application.UserRole
import com.sample_application.property.Property
import grails.plugin.springsecurity.SpringSecurityService

class Sample_ApplicationTagLib {


    static namespace = "myNamespace"
//    static defaultEncodeAs = [taglib: 'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    def user = { attr, body ->
        User user = attr.name
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
        def a = attr.userID as Long
        println a
        println a.class
        User user = User.get(a)
        Set<Property> set = user.property
        println set
        out << render(template: '/user/template1', model: [set: set])

    }
//    def postProp =
//            { attr, body ->
//                def a = attr.userID as Long
//                User user = User.get(a)
//                String s = user.authorities.authority
//                println s
//                if (s.equals('ROLE_OWNER') && ('ROLE_AGENT')) {
//
//
//                }
//
//
//            }

}
