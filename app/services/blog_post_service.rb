class BlogPostService

  def self.conn
    Faraday.new(url: 'https://api.hatchways.io')
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_posts(tag)
    get_url("/assessment/blog/posts?tag=#{tag}")
  end
end
