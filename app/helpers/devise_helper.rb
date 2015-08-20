module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages
    str = ''
    messages.each do |m|
      str += "toastr['error'](" + '"' + m + '"' + '); '
    end

    html = <<-HTML
      <script type='text/javascript'>
        toastr.options = {
          'closeButton': true,
          'debug': false,
          'newestOnTop': false,
          'progressBar': false,
          'positionClass': 'toast-bottom-left',
          'preventDuplicates': true,
          'onclick': null,
          'showDuration': '1000',
          'hideDuration': '1000',
          'timeOut': '9000',
          'extendedTimeOut': '1000',
          'showEasing': 'swing',
          'hideEasing': 'linear',
          'showMethod': 'fadeIn',
          'hideMethod': 'fadeOut'
        }
        #{str}
      </script>
    HTML

    html.html_safe
  end
end
