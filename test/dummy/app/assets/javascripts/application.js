// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require_tree .

$(document).on('turbolinks:load', function(event) {

  $('summernote-editor:not(.summernote-loaded)').each(function(){
    $(this).addClass('summernote-loaded');
    var input = $("#" + $(this).attr('input'));
    $(input).summernote(
      {
        styleWithSpan: false,
        toolbar: [
          ['style', ['bold', 'italic', 'underline', 'clear']],
          ['font', ['strikethrough', 'superscript', 'subscript']],
          ['para', ['style', 'ul', 'ol', 'paragraph']],
          ['insert', ['spina-link', 'spina-photo', 'spina-video', 'spina-cleaner']],
          ['misc', ['codeview' /*, 'fullscreen' */]]
        ],
        popover: {
          image : [
           ['imagesize', ['spina-imageSize100', 'spina-imageSize50', 'spina-imageSize25', 'spina-imageSize15']],
           ['float', ['spina-floatLeft', 'spina-floatRight', 'spina-floatNone']],
           ['lightbox', ['spina-lightbox']],
           ['remove', ['spina-removeMedia']]
          ]
        },
        styleTags: ['p', 'h2', 'h3', 'blockquote', 'pre'],
        dialogsInBody: false,
        dialogsFade: true,
        codemirror: {
          theme: 'monokai',
          lineNumbers: true,
          lineWrapping: true,
          tabSize: 2
        },
      }
    );
  });

});
