import requests
from bs4 import BeautifulSoup 
import cx_Oracle

dsn = cx_Oracle.makedsn("mit8.iptime.org",2315,"xe")
conn=cx_Oracle.connect("ott","1234",dsn)
cursor=conn.cursor()

sql = "select movie_title from movie order by movie_grade"
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

