# Default timeout (in minutes) for sudo before requesting credentials again
default[:olyn_sudo][:config][:timeout] = 15

# Allowed sudo users (built inside the wrapper recipe)
override[:authorization][:sudo][:users] = []

# Wrapper overrides
override[:authorization][:sudo][:sudoers_defaults] = [
  "env_reset,timestamp_timeout=#{node[:olyn_sudo][:config][:timeout]}",
  'secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"'
]
