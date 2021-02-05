class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFcGiMGj5z4xA408CAtcX9rPAmZ+pIVHfUSAbpJt4M2tLw01X2S4GFQ9XuShp3qu2JiP0feAjROhMRuS4WbnLZ3Vk0EkWo0WQ+CmPDeYoAL3CBeDBQ9xv21f83UvvoiqSS6yUcNNXa8Xtsft2iXIXQrYD1WzBpn60vO5OkOKn2RBjj9Pxy+lQhKf8Blzweztfo5sDbehqhpKnBc6TmILGtyAQb4lmolzpAxcazGwQXThvdW6uIKcTTS4L+00J3Nue9gGr0oTQA56hcKnotVcsy4e5w8hMA2w4eWRn1NWP02poY0veMAEVEVDbW7M9IwxPA3XBM4l3FrLaAskCl6GRx',
	}  
}
