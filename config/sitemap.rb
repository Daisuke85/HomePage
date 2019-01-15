SitemapGenerator::Sitemap.default_host = 'http://www.naturalguard.jp'
# 出力先のパスを変更したい場合は以下を有効化
# SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.create do
  add root_path, priority: 1.0, changefreq: 'daily'
end
