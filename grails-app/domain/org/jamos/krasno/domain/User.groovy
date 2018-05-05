package org.jamos.krasno.domain

//import org.joda.time

class User {

    String email
    String firstName
    String lastName
    String password
    String confirm
//    LocalDateTime created

    static constraints = {

        firstName(bank: false, minSize: 2, maxSize: 100)
        lastName(bank: false, minSize: 2, maxSize: 100)
        password(blank: false, minSize: 6)

        validator: { val, obj ->
            _validate(obj)
        }
    }

    static transients = {
        'confirm'
    }

    private _validate(user) {

        if (user.password != user.confirm) {
            user.rejectField('confirm', 'user.invalid.password.confirm')
        }
    }
}
