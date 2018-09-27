---
layout: page
title: Market Orders
---

## REST API

Download orders securely via our <a href="/market/order_api.html">Orders REST API</a>

## CSV Export via FTP Server

* Create an API Token in your PriceWaiter Market Settings
* Connect to ftp://ftp.pricewaiter.com
  * username: your store domain
  * password: a valid API Token
* list orders in folder `/orders`
* fetch individual order (example `/orders/77.csv`)
* delete orders from FTP Server when you have finished processing
