# AutoHtml.add_filter(:image).with(:width => 250, :height => 250) do |text, options|

#   text.gsub(/http:\/\/.+\.(jpg|jpeg|bmp|gif|png)(\?\S+)?/i) do |match|
#     width = options[:width]
#     height= options[:height]
#     %|<img src="#{match}" alt="" width="#{width}" height="#{height}" />|
#   end
# end
