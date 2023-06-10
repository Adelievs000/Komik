message('Loading Packages')
library(rvest)
library(tidyverse)
library(mongolite)

message('Scrapping Data')
url<-"https://1stkissmanga.me/manga-genre/drama/?m_orderby=trending"
manga<-read_html(url)
link<-manga %>% html_nodes(".page-item-detail.manga") %>% html_node("a")
link<-link[seq(2,length(link),2)] %>% html_attr("href")
link
tabel<-data.frame(Judul=0,Rating=0,Genre=0,Chapter.Terbaru=0,Summary=0)
for (i in 1:length(link)){
  url1<-read_html(link[i])
  tabel[i,1]<-url1 %>% html_nodes(".post-title") %>% html_text2()
  tabel[i,2]<-url1 %>% html_nodes(".post-content_item") %>% html_nodes("span[property='ratingValue']") %>% html_text2()
  tabel[i,3]<-url1 %>% html_nodes(".genres-content")%>% html_text2()
  tabel[i,4]<-url1 %>% html_nodes(".wp-manga-chapter")%>% head(n=1) %>% html_text2()
  tabel[i,5]<-url1 %>% html_nodes(".description-summary") %>% html_text2()
}
tabel$time<-Sys.Date()
tabel

#MONGODB
message('Input Data to MongoDB Atlas')
atlas_conn<-mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

atlas_conn$insert(tabel)
rm(atlas_conn)