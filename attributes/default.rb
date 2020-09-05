# Allowed sudo users (built inside the wrapper recipe)
override[:authorization][:sudo][:users] = []

# Wrapper overrides
override[:authorization][:sudo][:sudoers_defaults] = [
  'env_reset',
  'secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"'
]
