Spree Image Multi Upload
=====================

Allow Spree to upload multi product images at the same time

Requirements
------------

Extension in master branch depends on Spree 3.x.


Installation
------------

To use the last stable release of spree_image_multi_upload, add the following to your Gemfile:
```ruby
gem 'spree_image_multi_upload', github: 'medaved/spree_image_multi_upload'
```

Now bundle up with:
```
bundle install
```

Add lines in:

vendor/assets/javascripts/backend/all.js
```
...
//= require spree/backend/spree_image_multi_upload
...
```

vendor/assets/stylesheets/backend/all.css
```
...
*= require spree/backend/spree_image_multi_upload
...
```

Now you should be able to boot up your server with:
```
rails s
```

