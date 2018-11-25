#coding = utf-8
#__author__:'sareeliu'
#__date__ : '2018/11/25 15:21'

import requests,re,json,brotli,sqlite3
from lxml import etree

def onepage(xpathtree):
    onepage_name_res = xpathtree.xpath('//div[@class="blog_subject"]/a/b/text()')
    onepage_mp4links_res = []
    onepage_linkres = xpathtree.xpath('//div[@class="blog_body"]/iframe/@src')
    for i in onepage_linkres:
        res = re.search(".*?id=(.*?)&.*",str(i)).group(1)
        #对类似如下的链接，发起post请求，
        # "https://www.fembed.com/api/source/8x9pe-dwqv7"
        url = "https://www.fembed.com/api/source/{0}".format(res)
        # print(url)
        second_headers = {
            "authority":"www.fembed.com",
            "method":"POST",
            "path":"/api/source/"+res,
            "scheme":"https",
            "accept":"*/*",
            "accept-encoding":"gzip, deflate, br",
            "accept-language":"zh-CN,zh;q=0.9,en;q=0.8,th;q=0.7,zh-TW;q=0.6,ja;q=0.5",
            "content-length":"80",
            "content-type":"application/x-www-form-urlencoded; charset=UTF-8",
            "cookie":"__cfduid=d813acf088b19154e64252e21fa9a51021543127857; _ym_uid=1543127896195712244; _ym_d=1543127896; _ym_isad=2",
            "origin":"https://www.fembed.com",
            "referer":"https://www.fembed.com/v/8x9pe-dwqv7",
            "user-agent":"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36",
            "x-requested-with":"XMLHttpRequest"
        }
        #对url发起post请求
        form_data = {
            "r":"http://twdvd.com/player/fembed/v.php?id={0}&play=1".format(res)
        }
        #从post请求返回的json数据里，拿到那个最长的链接
        response = requests.post(url,headers = second_headers,data=form_data)
        response.encoding = response.apparent_encoding
        key = 'content-encoding'
        # if (key in response.headers and response.headers['content-encoding'] == 'br'):
        response_data = brotli.decompress(response.content).decode('utf-8')
        data = json.loads(response_data)['data'][-1]['file']    #拿到分辨率最高的那个最长链接
        midurl = "https://www.fembed.com"+data
        # print(midurl)
        third_headers = {
            "authority":"www.fembed.com",
            "method":"GET",
            "path":midurl,
            "scheme":"https",
            "accept":"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8",
            "accept-encoding":"gzip, deflate",
            "accept-language":"zh-CN,zh;q=0.9,en;q=0.8,th;q=0.7,zh-TW;q=0.6,ja;q=0.5",
            "cookie":"__cfduid=d813acf088b19154e64252e21fa9a51021543127857; _ym_uid=1543127896195712244; _ym_d=1543127896; _ym_isad=2",
            "upgrade-insecure-requests":"1",
            "user-agent":"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36" ,
        }
        #对最长链接再次发起get请求，它会重定向
        response = requests.get(midurl,headers = third_headers,allow_redirects=False)
        onepage_mp4links_res.append(response.headers['Location'])     #把每一个mp4链接加入到

    onepage_zuhe = zip(onepage_name_res,onepage_mp4links_res)
    #return onepage_zuhe
    for j in onepage_zuhe:
        conn = sqlite3.connect("../ziyuan.db")
        c = conn.cursor()
        c.execute("INSERT or IGNORE into twdvd_wuma (name,link) VALUES (?,?)", (j[0],j[1]))
        conn.commit()
        conn.close()

# 主页面请求头
first_headers = {
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8",
    "Accept-Encoding": "gzip, deflate",
    "Accept-Language": "zh-CN,zh;q=0.9,en;q=0.8,th;q=0.7,zh-TW;q=0.6,ja;q=0.5",
    "Cache-Control": "max-age=0",
    "Cookie": "__cfduid=d83868d1e75f6f68e51de4143506eb8fc1543127357; _ga=GA1.2.1276427654.1543127378; _gid=GA1.2.1159159938.1543127378; viewadult=over18; PHPSESSID=damhi5iuu111sndccn2ulrqb82; __.popunderCap=1",
    "Host": "twdvd.com",
    "Proxy-Connection": "keep-alive",
    "Referer": "http://twdvd.com/video/",
    "Upgrade-Insecure-Requests": "1",
    "User-Agent": "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36"
}

print("如下是第1页")
html = requests.get("http://twdvd.com/uncensored/", headers=first_headers)  # 对主页面发起请求
xpathtree = etree.HTML(html.text)    # 解析主页面
page_count = xpathtree.xpath("//center/font/text()")[0][1:-2]       #从主页面中分析出游多少页面
onepage(xpathtree)


for each in range(int(page_count)-1):
    print("如下是第"+str(each+2)+"页")
    nextpage_link = xpathtree.xpath("//center/span/a/@href")[-2]    #取出下一个链接
    html = requests.get("http://twdvd.com/uncensored/"+nextpage_link, headers=first_headers)
    xpathtree = etree.HTML(html.text)
    onepage(xpathtree)

