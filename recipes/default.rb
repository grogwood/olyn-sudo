# Loop through each user item in the data bag
data_bag('system_users').each do |user_item|

  # Load the data bag item
  user = data_bag_item('system_users', user_item)

  # Skip users that are not system users with auto create enabled
  next unless user[:options]['sudoer']

  # Add the username into the sudoer wrapper overrides
  node.override[:authorization][:sudo][:users] << user[:username]

end

# Install the sudo package
package 'sudo' do
  action :install
end

# Run the sudo configuration recipe
include_recipe 'sudo'