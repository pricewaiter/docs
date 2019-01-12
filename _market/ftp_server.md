---
layout: page
title: FTP Server
---

<h4>
    Upload Order Shipping and Tracking information to our ftp server using the following csv format:
</h4>

<a href="/files/pricewaiter_sample_feed.csv">Download a sample feed CSV file</a>.

<table>
    <thead>
        <tr>
            <th colspan="4"><h3>Column headers</h3></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><h4>order number</h4></td>
            <td><strong>required</strong></td>
            <td>string</td>
            <td>PriceWaiter order number that you are uploading tracking for</td>
        </tr>
        <tr>
            <td><h4>tracking number</h4></td>
            <td><strong>required</strong></td>
            <td>string</td>
            <td>tracking number for your shipped order</td>
        </tr>
        <tr>
            <td><h4>shipping method</h4></td>
            <td><strong>(optional)</strong></td>
            <td>string</td>
            <td>link to product in your catalog</td>
        </tr>
        <tr>
            <td><h4>shipping carrier</h4></td>
            <td><strong>(optional)</strong></td>
            <td>string</td>
            <td>link to product image</td>
        </tr>
        <tr>
            <td><h4>tracking url</h4></td>
            <td><strong>required</strong></td>
            <td>string</td>
            <td>name of the brand or manufacturer</td>
        </tr>
        <tr>
            <td><h4>delivery date</h4></td>
            <td><strong>required</strong></td>
            <td>string</td>
            <td></td>
        </tr>
    </tbody>
</table>
