$ ".speaker .bio"
  .filter -> @scrollHeight > 200
  .hover ->
     $ this
       .css overflowY: "auto"
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

