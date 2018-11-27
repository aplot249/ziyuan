#coding = utf-8
#__author__:'sareeliu'
#__date__ : '2018/11/27 13:32'

import requests,re,os,sqlite3,threading
from contextlib import closing

def download_file(video_m3u8,oldpath,newpath):
<<<<<<< HEAD
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
=======
        m3u8_response = requests.get(video_m3u8)
        ts_list = re.findall(".*ts",m3u8_response.text,re.M)
        with open(oldpath, "wb") as f:
            for ts in ts_list:
                ts = '/'.join(re.split('/',video_m3u8)[:-1])+"/"+ts
                print(ts)
                try:
                    with closing(requests.get(ts, stream=True)) as r:  # r对应一个ts完整请求
                        for chunk in r.iter_content(chunk_size=1024*1024):  # 对ts大小按1024进行存到硬盘
                            f.write(chunk)
                            f.flush()
                            os.fsync(f.fileno())
                except:
                    pass
>>>>>>> 8cd27861ac8becf785f337101253ba780f9da61d

def upload_file(video_m3u8, oldpath, newpath):
    while True:
        comm = 'onedrivecmd put "{0}" od:/video/lunli/'.format(str(newpath))
        print(comm)
        res = os.popen(comm)
        try:
            clean = str(list(res)[0]).replace("\n", "")
            print(clean)
        except:
            clean = "ok"
        if clean != "Annotations must be specified before other elements in a JSON object":
            break

def handle_file(video_m3u8, oldpath, newpath):
    # 1.数据库处理
    conn = sqlite3.connect("../ziyuan.db")
    c = conn.cursor()
    c.execute("UPDATE yase_lunli SET token = 1 WHERE link = ?", (video_m3u8,))
    conn.commit()
    conn.close()
    # 2.视频转码处理
    comm = "ffmpeg -i {0} -acodec copy -vcodec copy -f mp4 -bsf:a aac_adtstoasc {1} -y".format(str(oldpath),str(newpath))  # 转码生成新文件
    os.system(comm)


def action(video_m3u8, oldpath, newpath,video_name):
    download_file(video_m3u8, oldpath, newpath)
    handle_file(video_m3u8, oldpath, newpath)
    upload_file(video_m3u8, oldpath, newpath)
    #share_file(video_m3u8, oldpath, newpath,video_name)
    #dwz(video_m3u8, oldpath, newpath)
    os.system("rm -rf {0}".format(oldpath))
    os.system("rm -rf {0}".format(newpath))

if __name__ == '__main__':

    # 从数据库获取 没被下载过的资源 的结果集，存入list列表，并进行去重！
    conn = sqlite3.connect("../ziyuan.db")
    c = conn.cursor()
    db_result = c.execute("SELECT * FROM yase_lunli WHERE token = 0 AND link NOT NULL ")
    result_list = []
    for u in db_result:
        result_list.append(u)
    conn.commit()
    conn.close()
    result_list = set(result_list)  # 列表去重

    threads_list = []  # 线程列表
    # 遍历list列表
    for i in result_list:
        video_name = re.sub("[“”（）？，、。！【】\s]", "", str(i[0]))  # 片名
        prefix0 = "F:\\videotutorial\\ceshi\\"
        prefix = "/root/ziyuan/"
        oldpath = prefix + "oldvideo/" + video_name + ".mp4"
        newpath = prefix + "newvideo/" + video_name + ".mp4"
        video_m3u8 = str(i[1])  # 片子完整的m3u8链接
        t = threading.Thread(target=action, args=(video_m3u8, oldpath, newpath,video_name))
        threads_list.append(t)

    for t in threads_list:
        t.start()
        while True:
            # 判断正在运行的线程数量,如果小于5则退出while循环,
            if (len(threading.enumerate()) < 8):
                break

