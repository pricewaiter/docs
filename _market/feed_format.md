---
layout: page
title: Feed Format
---

<h4><p>
    Your Product Feed will allow PriceWaiter to show the Make an Offer banner to shoppers on your competitors' sites based on matches with your products. It will also allow us to automate responses to offers from shoppers to boost conversion rates and save you time. Once a shopper places an order, your Product Feed helps us accurately write the order to your system for fulfillment.
</p></h4>

<h4><p>
    Currently we only support .csv or .xml feed formats.
</p></h4>

<a href="/files/pricewaiter_sample_feed.csv">Download a sample feed CSV file</a>.

<table>
    <thead>
        <tr>
            <th colspan="4"><h3>Column headers</h3></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><h4>product name</h4></td>
            <td><strong>required</strong></td>
            <td>string</td>
            <td>name of product in your catalog</td>
        </tr>
        <tr>
            <td><h4>link</h4></td>
            <td><strong>required</strong></td>
            <td>string</td>
            <td>link to product in your catalog</td>
        </tr>
        <tr>
            <td><h4>image</h4></td>
            <td><strong>required</strong></td>
            <td>string</td>
            <td>link to product image</td>
        </tr>
        <tr>
            <td><h4>brand</h4></td>
            <td><strong>required</strong></td>
            <td>string</td>
            <td>name of the brand or manufacturer</td>
        </tr>
        <tr>
            <td><h4>mpn</h4></td>
            <td><strong>required</strong></td>
            <td>string</td>
            <td></td>
        </tr>        
        <tr>
            <td><h4>gtin</h4></td>
            <td><strong>required</strong></td>
            <td>string</td>
            <td>product gtin or upc</td>
        </tr>        
        <tr>
            <td><h4>availability</h4></td>
            <td><strong>required</strong></td>
            <td>string</td>
            <td>'Y' for available, 'N' if currently unavailable</td>
        </tr>
        <tr>
            <td><h4>quantity</h4></td>
            <td><strong>required</strong></td>
            <td>number</td>
            <td>number of the product in your inventory</td>
        </tr>
        <tr>
            <td><h4>list price</h4></td>
            <td><strong>required</strong></td>
            <td>number</td>
            <td>usual price product is sold for on your site</td>
        </tr>
        <tr>
            <td><h4>sku</h4></td>
            <td><strong>recommended</strong></td>
            <td>string</td>
            <td></td>
        </tr>
        <tr>
            <td><h4>asin</h4></td>
            <td><strong>recommended</strong></td>
            <td>string</td>
            <td>product asin</td>
        </tr>
        <tr>
            <td><h4>minimum price</h4></td>
            <td><strong>Include for products you want automated</strong></td>
            <td>number</td>
            <td>minimum price you are willing to sell your product for</td>
        </tr>
        <tr>
            <td><h4>shipping</h4></td>
            <td>(if applicable)</td>
            <td>number</td>
            <td>shipping value assigned to this product</td>
        </tr>
        <tr>
            <td><h4>tax</h4></td>
            <td>(if applicable)</td>
            <td>number</td>
            <td>tax value assigned to this product</td>
        </tr>
        <tr>
            <td><h4>color</h4></td>
            <td>(if applicable)</td>
            <td>string</td>
            <td>color for this product variant</td>
        </tr>
        <tr>
            <td><h4>size</h4></td>
            <td>(if applicable)</td>
            <td>string</td>
            <td>size for this product variant</td>
        </tr>
        <tr>
            <td><h4>gender</h4></td>
            <td>(if applicable)</td>
            <td>string</td>
            <td>gender for this product variant</td>
        </tr>
        <tr>
            <td><h4>material</h4></td>
            <td>(if applicable)</td>
            <td>string</td>
            <td>material for this product variant</td>
        </tr>
        <tr>
            <td><h4>category</h4></td>
            <td>(optional)</td>
            <td>string</td>
            <td>category this product belongs to</td>
        </tr>
    </tbody>
</table>
