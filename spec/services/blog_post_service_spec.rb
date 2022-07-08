require 'rails_helper'

RSpec.describe BlogPostService do

 it 'returns get request' do
   posts = BlogPostService.get_posts('tech')

   expect(posts).to be_a Hash
   expect(posts).to have_key(:posts)
   expect(posts[:posts]).to be_a Array
   posts[:posts].each do |post|
    expect(post).to be_a Hash
   end
 end
end
