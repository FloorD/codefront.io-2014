@avatarFallback = (el)->
  el.src = "/public/images/speakers/empty#{if Retina.isRetina() then '@2x' else ''}.png"
