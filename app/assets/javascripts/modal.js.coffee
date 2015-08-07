$ ->
  modal_holder = '#modal-holder'
  modal_selector = '.modal'

  $(document).on 'click', 'a[data-modal]', ->
    location = $(this).attr('href')
    $.get location, (data) ->
      $(modal_holder).html(data).find(modal_selector).modal('show')

    false

  $(document).on 'ajax:success', 'form[data-modal]', (event, data, status, xhr) ->
    url = xhr.getResponseHeader('Location')
    if url
      window.location = url
    else
      $('.modal-backdrop').remove()
      $(modal_holder).html(data).find(modal_selector).modal('show')

    false
