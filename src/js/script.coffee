$ ->

  $('#go').click ->
    $('#list').val(
      $('#list')
        .val()
        .replace(/\n?CHOOSE ALBUMS FOR YOUR LIST  EDIT YOUR LIST  VIEW YOUR LIST  WELCOME, [A-Za-z ]*. LOG OUT\?\nEDIT YOUR LIST\nDrag to order the albums you've picked.\nWhen you're done, click "Save Changes".\nDISMISS\nMY TOP ALBUMS\nDrag the albums below to order your list./g, '')
        .replace(/\nTell us what you think about your top pick:\n\n250 characters remaining\n/g, '')
        .replace(/\nFinished sorting your list\?\n\nSAVE CHANGES\nUnsaved changes will be\nauto-saved every 30 seconds.\n\nView your list and\nshare it with the world.\n\nVIEW YOUR LIST/g, '')
        .replace(/\n?Remove/g, '')
        .replace(/\d+\n(.*)\n(.*)/g, '$2 - $1')
        .trim()
    )
