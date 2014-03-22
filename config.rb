require './credentials'
require 'stringex'

activate :livereload

set :css_dir, 'public/css'

set :js_dir, 'public/js'

set :images_dir, 'public/images'

configure :build do
  activate :minify_css
  # Minify Javascript on build
  # activate :minify_javascript
end


activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method   = :rsync
  deploy.user     = WEBBOX_USER
  deploy.host     = WEBBOX_HOST
  deploy.path     = WEBBOX_PATH
end
