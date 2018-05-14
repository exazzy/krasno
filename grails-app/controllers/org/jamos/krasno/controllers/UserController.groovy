package org.jamos.krasno.controllers

import org.jamos.krasno.domain.User
import org.jamos.krasno.utils.SecurityUtils

class UserController {

    static layout = "main"

    def login = {
    }

    def do_login = {
    }

    def signup = {
    }

    def do_signup = {

        def user = new User(
                email: params.email,
                firstName: params.firstName,
                lastName: params.lastName,
                password: params.password
        )

        if (!user.validate()) {
            redirect(action: 'signup', params: [user: user])
        }

        redirect(controller: 'main', action: 'indexn                                                                                                                                                                                                                                                                                                                              ')
    }
}
