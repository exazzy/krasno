package org.jamos.krasno.controllers

import org.jamos.krasno.domain.User

class UserController {

    static layout = "main"

    def register = {

        if (request.method == 'POST') {

            def user = new User(params)
            user.hashedPassword = user.password.encodeAsPassword()

            if (!user.save()) {
                return [user: user]
            } else {
                session.user = user
                redirect(controller: 'main')
            }
        } else if (session.user) {
            redirect(controller: main)
        }
    }

    def login = {

        if (request.method == 'POST') {
            def hashedPassword = params.password.encodeAsPassword()
            def user = User.findByEmailAndHashedPassword(params.email, hashedPassword)

            if (user) {
                session.user = user
            } else {
                flash.message = "Неверный email или пароль"
                return [email: params.email]
            }

            redirect(controller: 'main')
        }
    }

    def logout = {
        session.invalidate()
        redirect(controller: 'main')
    }
}
