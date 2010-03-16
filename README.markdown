Griddleware: The middleware for Griddle
=======================================

Specifically designed to interact with [Griddle](http://www.github.com/toastyapps/griddle), use griddleware to serve files from `GridFileSystem` to the browser. 

Installation
------------------

Griddleware can be used anywhere you would use middleware. Install the gem:

    gem install griddleware
    
For Rails 2.3.5, add the following to your `environment.rb`:

    config.middleware.use "Griddleware::GridFile"

Griddle::Attachment helpers for the web
---------------------------------------

A class with a grid attachment:

    class Document
      
      include Griddle::Attachment
      
      has_grid_attachment :image, :styles=>{
        :thumb => "50x50#"
      }
      
    end

Create a document (*See griddle for alternatives*):
    
    @document = Document.new
    @document.image = File.new("attached_file.jpg", 'rb')
    @document.save_attached_files

Griddleware adds a `url` method to grid attachments:

    puts @document.image.url
    => /grid/documents/12345/image/attached_file.jpg
    
    puts @document.image.medium.url
    => /grid/documents/12345/image/medium/attached_file.jpg

Note on Patches/Pull Requests
-----------------------------

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don’t break it in a future version unintentionally.
* Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

Copyright
---------

Copyright © 2010 meanmarcus. See LICENSE for details.