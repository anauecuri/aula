class base {
	file{"/etc/puppetlabs/puppet/puppet.conf":
		source => "puppet:///modules/base/puppet.conf",
	} 

	service{'puppet':
		ensure => running,
		enable => true,
		subscribe => File['/etc/puppetlabs/puppet/puppet.conf']
	} 









}
