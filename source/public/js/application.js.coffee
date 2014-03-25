$ ".speaker .bio"
  .filter -> @scrollHeight > 200
  .hover ->
     width = $(window).width()
     console.log width
     $(this).css overflowY: "auto" if width > (767-16)
     # .animate scrollTop: $(this).height(), 4000
  , ->
    $ this
    #  .animate scrollTop: 0, 4000
       .css overflowY: "hidden"

$ ".navbar ul li a[href^='#']"
  .on "click", (e)->
    e.preventDefault()
    hash = @hash
    $ "html, body"
      .animate
        scrollTop: $(@hash).offset().top
      , 300, ->
        window.location.hash = hash

