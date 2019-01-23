package bsestarmf

import com.BseStarMf.User

class UserBankDetails {
    User  user
    String bankName
    String accountNumber
    String ifscCode

    static constraints = {
        user(nullable: false,blank:false)
        bankName(nullable: false,blank: false)
        accountNumber(nullable: false,blank: false)
        ifscCode(nullable: false,blank: false)
    }
}
