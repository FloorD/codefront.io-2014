# codeFront.io 2014
## Front-end Development Conference
### May, 10 / 2014 Linz / Austria

# Install

    bundle install --path vendor/bundle
    
    # to preview / run
    bundle exec middleman

# Deployment

Do not forget to create `credentials.rb` file on project root and add your
server credentials like:

    WEBBOX_USER = "YOUR_USERNAME"
    WEBBOX_HOST = "example.com"
    WEBBOX_PATH = "/path/to/your/static_app/codefront.io-2014"

then;

    bundle exec middleman deploy

enjoy!