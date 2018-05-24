package org.jamos.krasno.domain

//import org.joda.time

class User {

    String email
    String password
    String confirm
    String hashedPassword

    // Make activation
    Boolean active = true

    // LocalDateTime created

    static constraints = {
        email           email: true, unique: true
        password        nullable: false, minSize: 6
        confirm         validator: { value, obj -> _validatePassword(obj)}
        hashedPassword  nullable: true
    }

    static transients = [
        'password',
        'confirm'
    ]

    static mapping = {
        hashedPassword column: 'password'
    }

    private static _validatePassword(user) {

        if (user.password != user.confirm) {
            user.errors.rejectValue('confirm', 'user.password.dontmatch')
        }
    }
}
