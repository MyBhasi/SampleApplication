import com.sample_application.Role
import com.sample_application.User
import com.sample_application.UserRole
import com.sample_application.myuser.MyUser

class BootStrap {

    def init = { servletContext ->
        Role adminRole1 = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true, flush: true)
//        Role adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true, flush: true)
        User adminUser1=User.findByUsername("bhaskar@gmail.com") ?:
                new User(username: "bhaskar@gmail.com", password: "bhaskardefault",firstName: "bhaskar",lastName: "singh" ,phoneNo:"9899856955"   ,admin:true , enabled: true).save(failOnError: true, flush: true)
        if (!adminUser1.authorities.contains(adminRole1)) {
            UserRole.create(adminUser1, adminRole1, true)
        }
        Role owner = Role.findByAuthority('ROLE_OWNER') ?: new Role(authority: 'ROLE_OWNER').save(failOnError: true, flush: true)
        User ownerUser1=User.findByUsername("deepak@gmail.com") ?:
                new User(username: "deepak@gmail.com", password: "bhaskardefault",firstName: "deepak",lastName: "kumar" ,admin:false,phoneNo:'9868846163' , enabled: true).save(failOnError: true, flush: true)
        if (!ownerUser1.authorities.contains(owner)) {
            UserRole.create(ownerUser1 , owner,true)
        }
        Role agent = Role.findByAuthority('ROLE_AGENT') ?: new Role(authority: 'ROLE_AGENT').save(failOnError: true, flush: true)
        User agentUser1=User.findByUsername("ashish@gmail.com") ?:
                new User(username: "ashish@gmail.com", password: "bhaskardefault", firstName: "ashish",lastName: "gautam",admin: false, enabled: true).save(failOnError: true, flush: true)
        if (!ownerUser1.authorities.contains(agent)) {
            UserRole.create( agentUser1,agent, true)
        }
        Role customer = Role.findByAuthority('ROLE_CUSTOMER') ?: new Role(authority: 'ROLE_CUSTOMER').save(failOnError: true, flush: true)
        User customerUser1=User.findByUsername("adarsh@gmail.com") ?:
                new User(username: "adarsh@gmail.com", password: "bhaskardefault",firstName: "adarsh",lastName: "tiwari",admin:false, enabled: true).save(failOnError: true, flush: true)
        if (!ownerUser1.authorities.contains(customer)) {
            UserRole.create(customerUser1,customer, true)
        }




    }
    def destroy = {
    }
}
