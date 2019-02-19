#!/bin/bash

text='
<html>
<head>
<link rel="stylesheet" href="./chota.css"/>
<link rel="stylesheet" href="./style.css"/>
</head>
<body>
<header>
<h1>Picture Gallery</h1>
</header>
<main>
';
for i in images/*; do
 text=$text'<img src="./'$i'">'
 json=$json'{"src": "'$i'"}'
done

text=$text'
</main>
</body>
</html>'
echo $text > index.html
