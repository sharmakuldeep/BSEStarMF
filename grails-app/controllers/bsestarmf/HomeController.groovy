package bsestarmf

import com.BseStarMf.User
import grails.plugins.springsecurity.Secured

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class HomeController {
    def springSecurityService

    def index() {
        def currentUserId = springSecurityService.currentUser.id
        def user = User.findById(currentUserId)
        [user:user]
    }
}
