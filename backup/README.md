FnF zettheme Inc.
================

Problems? Issues?
-----------

Ruby on Rails
-------------

Getting Started
---------------

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------

#### Oleg G.Kapranov 4 June 2015

railsapps.github.io/rails-examples-tutorials.html
https://gorails.com/episodes/file-uploads-with-refile
stackoverflow.com/questions/28795992/pundit-authorizaton-for-files-uploaded-with-refile-gem
https://richonrails.com/articles/allowing-file-uploads-with-carrierwave
https://github.com/JangoSteve/remotipart

http://stackoverflow.com/questions/21411988/rails-4-multiple-image-or-file-upload-using-carrierwave
http://stackoverflow.com/questions/7344618/carrierwave-and-correct-file-extension-depending-on-its-contents
http://stackoverflow.com/questions/9126117/mixed-file-types-with-carrierwave
http://cloudinary.com/documentation/rails_image_manipulation
https://binarapps.com/blog/multiple-image-upload-with-carrierwave-and-plupload/
https://github.com/tommy7xo/upload-example

process :scale
  #
  def scale
    manipulate! do |img|
      raise model.to_yaml
      if model.usage_tag == "logo"
        #raise model.to_yaml
        img.resize_to_fill!(320,320)
      elsif model.usage_tag == "thumbnail"
        img.resize_to_fill!(200,200)
      else
        img.resize_to_fill!(640,720)
      end
      img
    end
  end

http://www.sitepoint.com/build-online-store-rails/
https://richonrails.com/articles/building-a-shopping-cart-in-ruby-on-rails
https://github.com/RichIsOnRails/ShoppingCartExampleApp

https://github.com/dancinglightning
https://github.com/rubyclerks/office_clerk
https://github.com/marketstreet/market_street

http://liamkaufman.com/blog/2013/02/27/adding-real-time-to-a-restful-rails-app/
http://mikeatlas.github.io/realtime-rails/
https://github.com/liamks/rails-realtime
https://github.com/chrismccord/sync

http://simple-form.plataformatec.com.br/


http://stackoverflow.com/questions/8659643/rails-if-image-doesnt-exist-show-text
http://stackoverflow.com/questions/21943520/devise-carrierwave-problems

https://github.com/plataformatec/simple_form
http://stackoverflow.com/questions/27616022/placeholder-in-rails-simpleform-association
http://stackoverflow.com/questions/8477301/link-to-path-definition
http://stackoverflow.com/questions/5625323/rails-new-or-edit-path-helper
http://stackoverflow.com/questions/10530890/link-to-edit-another-model
