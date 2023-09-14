module ApplicationHelper
  def default_meta_tags
    {
      site: '空耳English',
      title: '空耳English - 空耳英語から脱却しよう！',
      reverse: true,
      charset: 'utf-8',
      description: '空耳Englishではクイズに答えて英語の音を学んでいきます',
      keywords: '空耳,英語,English,空耳英語',
      canonical: request.original_url,
      separator: '|',
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        # site: '@mslryotaro',
        image: image_url('ogp.png')
      }
    }
  end
end
