import sys 
import requests
from bs4 import BeautifulSoup 
# import cx_Oracle

url = "https://search.naver.com/search.naver?where=nexearch&query="+ "영화 " + sys.argv[1]
headers = {"user-agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36"}
html = requests.get(url, headers=headers)
soup = BeautifulSoup(html.text, 'lxml')

genre = soup.find("div", attrs={"class":"info_group"}).dd.text

url = "https://search.naver.com/search.naver?where=nexearch&query=" +"영화 "+ sys.argv[1] + " 출연진"
headers = {"user-agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36"}
html = requests.get(url, headers=headers)
soup = BeautifulSoup(html.text, 'lxml')

actor = soup.find_all("strong", attrs={"class":"name _ellpisis"})[1].text.replace(" ","")

title = sys.argv[1]
print(title)
print(genre)
print(actor)
