require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world!aaaaaaa'
end

get '/htmlfile' do
 send_file 'views/htmlfile.html'
end


get '/htmltag' do
    '<h1>html 태그를 보낼 수 있습니다.</h1>
    <ul>
    <li>1</li>
    <li>2</li>
    </ul>
    
    
    
    '    
end

get '/welcome/:name' do

"#{params[:name]} 님 안녕하세요" 
    
end

get '/cube/:num' do


input =params[:num].to_i
result = input**3

"<h1>#{result}</h1>"




end


get '/erbfile' do

@name = "hkee"
erb :erbfile
end




get '/lunch-array' do
    @array = ['김밥','라면','떡볶이','짜장면','냉면']

erb :lunch_array
end

get '/lunch-hash' do
    
    menu =['김밥','라면','떡볶이','짜장면']
    menu_img ={"김밥"=>"<img src='http://bapuri.co.kr/new2/upload/menu_01/2017_01_02/hero_9VpPy_2017_01_02_12_51_01.png'>",
     "라면"=>"<img src='https://i1.wp.com/dilite.co.kr/wp-content/uploads/2018/02/%EB%9D%BC%EB%A9%B4.jpg?fit=800%2C533'>",
       "떡볶이"=>"<img src='http://cfile30.uf.tistory.com/image/2352344552B3DAF823E029'>",
   "짜장면"=>"<img src='http://www.ohfun.net/contents/article/images/2015/0607/1433677499050108.jpg'>"}

    @menu_result=menu.sample
    @menu_img=menu_img[@menu_result]
    
    erb :lunch_hash
    
          
    
end

get '/randomgame/:name' do
    @name=params[:name]
    values=['대감집 노비','수랏간 궁녀','왕','각설이','백정','내시']
    values_img={
        "대감집 노비"=>"http://mblogthumb1.phinf.naver.net/20160616_84/alsn76_1466069151965H3PuL_JPEG/%C0%CC%B9%CC%C1%F6_49.jpg?type=w2",
        "수랏간 궁녀"=>"http://img.khan.co.kr/newsmaker/800/104_a.jpg",
        "왕"=>"http://img.insight.co.kr/static/2016/07/08/700/5E9616UM4J3Q10P105K2.jpg",
        "각설이"=>"http://image.ohmynews.com/down/images/1/whda2002_287765_1[450126].jpg",
        "백정"=>"https://ncache.ilbe.com/files/attach/new/20131208/377678/2261605460/2510758368/0487e76f2510a8356e8628f7f2105767.jpg",
        "내시"=>"http://img.insight.co.kr/static/2018/01/17/700/pawu5k09jy55jz8c13t0.jpg"
    }
    @result=values.sample
    @result_img=values_img[@result]
    
    erb :randomgame
end

