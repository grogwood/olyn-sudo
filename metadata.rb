name 'olyn_sudo'
maintainer 'Scott Richardson'
maintainer_email 'dev@grogwood.com'
chef_version '~> 16'
license 'GPL-3.0'
supports 'debian', '>= 10'
source_url 'https://gitlab.com/olyn/olyn_sudo'
description 'Installs and configures sudo'
version '1.0.1'

provides 'olyn_sudo::default'
recipe 'olyn_sudo::default', 'Installs and configures sudo'

depends 'sudo', '~> 5'
