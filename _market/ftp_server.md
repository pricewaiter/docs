---
layout: page
title: FTP Server
---

<h4>
    Upload Order Shipping and Tracking information to our ftp server using the following csv format:
</h4>

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
            <td>PriceWaiter order number</td>
        </tr>
        <tr>
            <td><h4>tracking number</h4></td>
            <td><strong>required</strong></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><h4>delivery date</h4></td>
            <td><strong>required</strong></td>
            <td>string</td>
            <td>estimated date of delivery</td>
        </tr>
        <tr>
            <td><h4>shipping carrier</h4></td>
            <td><strong>(optional)</strong></td>
            <td>string</td>
            <td>name of shipping carrier</td>
        </tr>
        <tr>
            <td><h4>shipping method</h4></td>
            <td><strong>(optional)</strong></td>
            <td>string</td>
            <td>ground, air, etc</td>
        </tr>
        <tr>
            <td><h4>tracking url</h4></td>
            <td><strong>(optional)</strong></td>
            <td>string</td>
            <td>url to tracking page for order</td>
        </tr>
    </tbody>
</table>
