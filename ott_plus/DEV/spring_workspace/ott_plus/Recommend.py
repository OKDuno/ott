import requests
from bs4 import BeautifulSoup 
import cx_Oracle

dsn = cx_Oracle.makedsn("192.168.0.64",1521,"xe")
conn=cx_Oracle.connect("ott","1234")
cursor=conn.cursor()

sql = "select title from viewtable order by score asc"
cursor.execute(sql)

for i in cursor:
    name = i[0]
# conn.commit()
type(name)
name

url = "https://search.naver.com/search.naver?where=nexearch&query="+ name+ " 비슷한 영화 추천"
headers = {"user-agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36"}
html = requests.get(url, headers=headers)
soup = BeautifulSoup(html.text, 'lxml')

title_src = soup.find_all("div", attrs={"class":"movie_txt"})
img_src = soup.find_all("img")

titleList = []
for i in range(0,3):
    title = title_src[i].a.text
    img = img_src[i].get("src")
    print(title)
    print(img)

#print(title_src[0].a.text)
#print(img_src[0].get("src"))
#print(title_src[1].a.text)
#print(img_src[1].get("src"))
#print(title_src[2].a.text)
#print(img_src[2].get("src"))


#1. db에 타이틀과 사진을 같이 넣고 꺼낸다.
# - 문제점 : 매일 파이썬 파일을 실행하고 제목 & 사진을 저장해야함.

#2. 크롤링 데이터를 바로 웹으로 보낸다.
# - 문제점 : 사진 데이터를 바로 보낼 수 있나?