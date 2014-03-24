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
