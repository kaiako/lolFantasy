package fantasylol

import grails.plugin.springsecurity.annotation.Secured

class SecureController {
	
    def index() {
      render 'Secure access only'
	}
}
