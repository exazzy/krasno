package org.jamos.krasno.utils

import java.security.MessageDigest

class SecurityUtils {

    static final SALT = "разлыхрытельмозга"

    static hash(value) {

        MessageDigest
                .getInstance("MD5")
                .digest((value + SALT).bytes)
                .encodeHex()
                .toString()
                .toUpperCase()
    }

}
