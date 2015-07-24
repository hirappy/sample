module ApplicationHelper
  # 選択中のサイドメニューのクラスを返す
  def sidebar_activate(sidebar_link_url)
    current_url = request.headers['PATH_INFO']
    if current_url.match(sidebar_link_url)
      ' class="active"'
    else
      ''
    end
  end

  # サイドメニューの項目を出力する
  def sidebar_list_items
    items = [
      {:text => 'Drink',      :path => drinks_path},
      {:text => 'Material',   :path => materials_path}
    ]

    html = ''
    items.each do |item|
      text = item[:text]
      path = item[:path]
      html = html + %Q(<li#{sidebar_activate(path)} style='border:1px solid #999966;'><a href="#{path}">#{text}</a></li>)
    end
    raw(html)
  end

end
