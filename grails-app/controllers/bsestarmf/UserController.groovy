package bsestarmf

import com.BseStarMf.User

class UserController {
    def springSecurityService
    def index() {}
    def userProfile={
        def currentUserId = springSecurityService.currentUser.id
        def user = User.findById(currentUserId)
        def userBankDetails = UserBankDetails.findByUser(user)
        [user:user, userBankDetails:userBankDetails]
    }

    def updateUserDetails={
        println("params in updateUserDetails:"+params)
        def user = User.findById(Integer.parseInt(params.userId));
        user.properties=params
        user.save(flush: true,failOnError: true)
            flash.message ="User Details Saved Successfully"
            redirect(action:  "userProfile")

    }

    def updateUserBankDetails={
        println("params in updateUserBankDetails:"+params)
        def currentUserId = springSecurityService.currentUser.id
        def user = User.findById(currentUserId);
        if(!params.userBankId){
            params.userBankId="00"
        }
        def userBankDetails = UserBankDetails.findByUserAndId(user,Integer.parseInt(params.userBankId));
        if(!userBankDetails){
            userBankDetails = new UserBankDetails()
            userBankDetails.user=user

        }
        userBankDetails.properties=params
        userBankDetails.save(flush: true,failOnError: true)
        flash.message ="User Bank Details Saved Successfully"
        redirect(action:  "userProfile")

    }
}
