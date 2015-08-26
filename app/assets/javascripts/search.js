// $(function () {
//     $('a[href="#search"]').on('click', function(event) {
//         event.preventDefault();
//         $('#search').addClass('open');
//         $('#search > form > input[type="search"]').focus();
//     });

//     $('#search, #search button.close').on('click keyup', function(event) {
//         if (event.target == this || event.target.className == 'close' || event.keyCode == 27) {
//             $(this).removeClass('open');
//         }
//     });
// });

$(function() {
  // Remove Search if user Resets Form or hits Escape!
  $('.navbar-collapse form[role="search"] button[type="reset"]').on('click keyup', function(event) {
    if (event.which == 27 && $('.navbar-collapse form[role="search"]').hasClass('active') ||
      $(event.currentTarget).attr('type') == 'reset') {
      closeSearch();
    }
  });

  function closeSearch() {
    var $form = $('.navbar-collapse form[role="search"].active')
    $form.find('input').val('');
    $form.removeClass('active');
  }

  // Show Search if form is not active // event.preventDefault() is important, this prevents the form from submitting
  $(document).on('click', '.navbar-collapse form[role="search"]:not(.active) button[type="submit"]', function(event) {
    event.preventDefault();
    var $form = $(this).closest('form'),
      $input = $form.find('input');
    $form.addClass('active');
    $input.focus();
  });
});