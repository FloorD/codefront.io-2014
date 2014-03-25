$ ".speaker .bio"
  .filter -> @scrollHeight > 200
  .hover ->
     width = $(window).width()
     # console.log width
     $(this).css overflowY: "auto" if width > 1024
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

hideBios = ->
  width = $(window).width()
  details = $ ".bio p:not(:first-child)"
  if (768-16) < width < (1024+16)
    # console.log "hide!"
    details.hide()
  else
    details.show()

$ document
  .ready hideBios

$ window
  .resize hideBios
  
