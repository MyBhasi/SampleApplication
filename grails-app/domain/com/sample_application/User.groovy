package com.sample_application

import com.sample_application.home.Home
import com.sample_application.office.Office
import com.sample_application.property.Property
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {
	String firstName
	String lastName
	String phoneNo
	boolean admin
	private static final long serialVersionUID = 1

	transient springSecurityService
	static hasMany = [property: Property]

	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	User(String username, String password) {
		this()
		this.username = username
		this.password = password
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this)*.role
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
		firstName blank: false
		lastName blank: false
		admin null: true
		phoneNo nullable: true, maxSize: 10, minSize: 10, blank:false, matches: "[0-9]+"


	}

	static mapping = {
		password column: '`password`'
	}
}
