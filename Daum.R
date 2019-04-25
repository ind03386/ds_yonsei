library(tidyverse)
library(httr)
library(rvest)

res <- GET(url = 'https://www.daum.net/')
print(x = res)

searchWords <- res %>% 
  read_html() %>% 
  html_nodes(css = 'div.realtime_part > ol > li > div > div:nth-child(1) > span.txt_issue > a') %>% 
  html_text(trim = TRUE)

print(x = searchWords)

