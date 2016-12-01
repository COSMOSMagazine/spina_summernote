# Spina Summernote Plugin

`gem 'spina_summernote'`

1. Include `spina/admin/spina-summernote.scss` in the admin layout
  Example: [test/dummy/app/views/layout/admin.html.haml]()
2. Include `spina/admin/spina-summernote.js` in the admin layout
  Example: [test/dummy/app/views/layout/admin.html.haml]()
3. Add js to init summernote
  Example: [test/dummy/app/views/layout/admin.html.haml]()
4. Override `app/views/spina/admin/shared/_rich_text_field.html.haml` with [test/dummy/app/views/layout/admin.html.haml]()

### Things that could be improved

* Automatically include `spina-summernote.js` and `spina-summernote.css` via plugin_stylesheets etc
* Automatically override `_rich_text_field.html.haml` somehow
* Add basic summerntoe setup and make it easy to change/override
* Remove currently required bootstrap snippets
