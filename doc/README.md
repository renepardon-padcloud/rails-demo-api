# ruby 2.0.0p195
$ rails _3.2.14rc2 new active scaffold-test-api
$ cd active scaffold-test-api
$ git init .
$ git add .
$ git commit -m "Initial commit"
$ git submodule add https://github.com/activescaffold/active_scaffold.git lib/active_scaffold

# Add to Gemfile:
gem 'active_scaffold', :path => 'lib/active_scaffold'

$ bundle install
$ bundle exec rake db:create

$  rails generate bootstrap:install less
$  rails g bootstrap:layout application fluid

# New order to create scaffold and TB theme
$ rails g scaffold Post title:string description:text
$ rake db:migrate
$ rails g bootstrap:themed Posts



# Create a navigation within application.html.erb
<% if current_user %>
  <%= menu_item "Log Out", log_out_path %>
<% else %>
  <% menu_group :pull => :right do %>
    <%= menu_item "Sign Up", registration_path %>
    <% form_for @user, :url => session_path(:user) do |f| -%>
      <p><%= f.text_field :email %></p>
      <p><%= f.password_field :password %></p>
      <p><%= f.submit "Sign in" %></p>
    <% end -%>
  <% end %>
<% end %>
<%= drop_down "Products" do %>
  <%= menu_item "Latest", latest_products_path %>
  <%= menu_item "Top Sellers", popular_products_path %>
  <%= drop_down_divider %>
  <%= menu_item "Discount Items", discounted_products_path %>
<% end %>