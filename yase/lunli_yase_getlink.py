#coding = utf-8
#__author__:'sareeliu'
#__date__ : '2018/11/26 14:39'

import requests,re,os,sqlite3
from lxml import etree
from contextlib import closing
# from av52.down_gc_52av import download_file,upload_file

def download_file(video_m3u8,oldpath):
    m3u8_response = requests.get(video_m3u8)
    ts_list = re.findall(".*ts",m3u8_response.text,re.M)
    with open(oldpath, "wb") as f:
        for ts in ts_list:
            ts = '/'.join(re.split('/',video_m3u8)[:-1])+"/"+ts
            print(ts)
            with closing(requests.get(ts, stream=True)) as r:  # r对应一个ts完整请求
                for chunk in r.iter_content(chunk_size=1024*1024):  # 对ts大小按1024进行存到硬盘
                    f.write(chunk)
                    f.flush()
                    os.fsync(f.fileno())

def upload_file(video_m3u8, oldpath, newpath):
    while True:
        comm = 'onedrivecmd put "{0}" od:/video/52av/'.format(str(newpath))
        print(comm)
        res = os.popen(comm)
        try:
            clean = str(list(res)[0]).replace("\n", "")
            print(clean)
        except:
            clean = "ok"
        if clean != "Annotations must be specified before other elements in a JSON object":
            break

# quit()

def eachvideo(onepage_detailpage_url_list):
    for i in onepage_detailpage_url_list:
        #http://www.yase123.com/video/?67538-0-0.html
        detail_url = "http://www.yase123.com/video/" + str(i).split("/")[2].split(".")[0]+"-0-0.html"
        res = requests.get(detail_url)
        tree = etree.HTML(res.text)
        video_name = tree.xpath('//h2/a/text()')[1]  # 片的名字
        script = tree.xpath('//div[@class="player embed-responsive embed-responsive-4by3"]/script/text()')[0]
        # video_m3u8_link = re.search('{"url":"(.*?)",',script).group(1)
        video_m3u8_link = re.search('https://(.*?).m3u8',script).group(1).replace("$","")
        video_m3u8_link = ("https://" + video_m3u8_link + ".m3u8").split("高清")[-1].replace("$","")
        # print(video_name,video_m3u8_link)
        response = requests.get(video_m3u8_link)
        # print(response.text)
        # print(re.split("\n",response.text)[-1])
        whether_jinxing = re.split("\n",response.text)[-1]
        prefix = "/root/ziyuan/"
        oldpath = prefix +"oldvideo/" + video_name +".mp4"
        newpath = prefix +"newvideo/" + video_name + ".mp4"
        if re.search(".*m3u8",whether_jinxing):
            video_m3u8_link = (video_m3u8_link[:-10] + whether_jinxing).replace("$","")
            print(video_name,video_m3u8_link)
            # download_file(video_m3u8_link,oldpath)
            # print("已经下载完成"+video_name)
            # comm = "ffmpeg -i {0} -acodec copy -vcodec copy -f mp4 -bsf:a aac_adtstoasc {1} -y".format(str(oldpath),str(newpath))  # 转码生成新文件
            # os.system(comm)
            # upload_file(video_m3u8_link, oldpath, newpath)
            # print("已经上传完成"+video_name)
            # os.system("rm -rf {0}".format(oldpath))
            # os.system("rm -rf {0}".format(newpath))
        else:
            video_m3u8_link.replace("$","")
            print(video_name,video_m3u8_link)
        c.execute('INSERT or IGNORE INTO yase_lunli (name,link) VALUES (?,?)',(video_name,video_m3u8_link))
        conn.commit()
            # download_file(video_m3u8_link,oldpath)
            # print("已经下载完成"+video_name)
            # comm = "ffmpeg -i {0} -acodec copy -vcodec copy -f mp4 -bsf:a aac_adtstoasc {1} -y".format(str(oldpath),str(newpath))  # 转码生成新文件
            # os.system(comm)
            # upload_file(video_m3u8_link, oldpath, newpath)
            # print("已经上传完成"+video_name)
            # os.system("rm -rf {0}".format(oldpath))
            # os.system("rm -rf {0}".format(newpath))

url = "http://www.yase123.com/list/?42-1---.html"  # 初始的首页面url
for count in range(2,4):    #循环120下
    conn = sqlite3.connect("../ziyuan.db")
    c = conn.cursor()
    url = "http://www.yase123.com/list/?42-"+str(count)+"---.html"
    print(url)
    html = requests.get(url)        #第一次循环，请求的是首页面url
    tree = etree.HTML(html.text)
    onepage_detailpage_url_list = tree.xpath('//div[@class="panel-max"]/ul/li/a/@href')           #一个页面的所有的伦理片详情页的url
    eachvideo(onepage_detailpage_url_list)
    conn.close()
    count = count + 1
