<!Doctype html>
<html>
<head><title>BuySell</title>
</head>
<body>
<h1>BYSELL</h1>
<h4> Товары </h4>

<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} | <a href="/product/${product.id}">Подробнее..</a> </p>
    </div>
    <hr>
</#list>

<h3>Создать новый товар</h3>
<form action="/product/create" method="post">
    Название объявление: <input type="text" name="title" /><br>
    Описание объявление: <input type="text" name="description" /><br>
    Цена: <input type="number" name="price" /><br>
    Город: <input type="text" name="city" /><br>
    Имя объявление: <input type="text" name="author" /><br>
    <input type="submit" value="Добавить товар"/>
</form>
</body>

</html>