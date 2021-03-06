---
layout: page
title: Market Order Processing
---

## REST API

Our <a href="/market/order_api.html">Pricewaiter REST API</a> supports:

- Downloading orders
- Providing tracking and fulfillment information
- Bulk updating product price and inventory data

## Download Order details via CSV Export from FTP Server

- Create an API Token in your PriceWaiter Market Settings
- Connect to ftp://ftp.pricewaiter.com
  - username: your store domain
  - password: a valid API Token
- list orders in folder `/orders`
- upload tracking and shipping info for orders from `/orders` folder
- fetch individual order (example `/orders/77.csv`)
- delete orders from FTP Server when you have finished processing

## Upload tracking numbers via FTP Server

- Follow FTP credentials and connection info from Order downloads above.
- Upload a CSV anywhere with the following columns:
  - `order number` (required)
  - `tracking number` (required)
  - `fulfillment reference` - your order management identification number
  - `shipping method`
  - `shipping carrier`
