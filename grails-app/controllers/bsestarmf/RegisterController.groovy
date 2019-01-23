package bsestarmf

import com.BseStarMf.User

class RegisterController {

    def index() {    println("params in register User: "+params)
        def user = new User(params)
        user.save(flush: true, failOnError: true)
        redirect(controller: 'login', action: 'auth')}
    def register={


    }
}
