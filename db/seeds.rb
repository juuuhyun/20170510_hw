# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# 첫 번째 방법
new_post = Post.new
new_post.title = "제목제목"
new_post.content = "dksdjf"
new_post.save 

# 두 번째 방법
Post.create(title: '안녕', content: '내용이야')

#댓글 시드
# 세 번째 방법
Comment.create(:content => '댓글이다', :post_id=> 1)