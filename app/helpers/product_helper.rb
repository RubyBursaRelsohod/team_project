module ProductHelper
  def print_array_for(hash_attrs)
    html_str = ''
    hash_attrs.each do |el|
      if el[0].include?('id') || el[0].include?('created_at') ||
         el[0].include?('updated_at') then next
      else
        if el[0].include?('count') then el[0] = el[0].sub('count', 'number') end
        html_str += '<h3>' + el[0].capitalize.split('_').join(' ') +
                    '</h3>' + tag('p') +
                    (el[1] == true ? 'Yes' : el[1] == false ? 'No' : el[1].to_s)
      end
    end
    html_str.html_safe
  end

  def get_img_src_for(product)
    image = ProductsPhoto.find_by(product_id: product.id)
    if image
      image.photo.url(:original)
    else
      'http://placehold.it/400x250/00/fff'
    end
  end
end
