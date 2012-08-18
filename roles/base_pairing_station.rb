name "base_pairing_station"
description "Base pairing server that contains the minimum to get a Ruby pairing env going."
# List of recipes and roles to apply. Requires Chef 0.8, earlier versions use 'recipes()'.
run_list(
"recipe[build-essential]",
"recipe[yum]",
"recipe[git]",
"recipe[vim]",
"recipe[tmux]",
"recipe[dotfiles]",
"recipe[openssl]",
"recipe[rvm_prereq]",
"recipe[rvm::user]",
"recipe[wemux]",
"recipe[user::data_bag]")
# Attributes applied if the node doesn't have it set already.
default_attributes(
'rvm' => {
  'user_installs' => [{
    'user' => 'vagrant',
    'default_ruby' => '1.9.3'}],
  'user_rubies' => ['1.9.3'],
  'user_global_gems' => ['name' => 'bundler', 'name' => 'rake' ]
},
'users' => ['visitor']
)
# Attributes applied no matter what the node has set already.
#override_attributes()
