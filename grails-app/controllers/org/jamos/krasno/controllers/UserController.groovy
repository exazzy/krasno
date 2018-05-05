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
                password: SecurityUtils.hash(params.password)
        )

        if (!user.save()) {
            return [user: user]
        }

        redirect(controller: 'main')
    }
}
