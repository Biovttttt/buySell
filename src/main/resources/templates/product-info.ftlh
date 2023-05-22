<!Doctype html>
<html>
<head><title>BuySell</title>
</head>
<body>
<h1>BYSELL</h1>
<h4> Подробнее информация о товары </h4>
<b> Название товара </b>${product.title}<br>
<b> Описание товара </b>${product.description}<br>
<b> Цена </b>${product.price}<br>
<b> Город </b>${product.city}<br>
<b> Автор </b>${product.author}<br>

<form action="/product/delete/${product.id}" method="post">

    <input type="submit" value="Удалить"/>
</form>
</body>

</html>