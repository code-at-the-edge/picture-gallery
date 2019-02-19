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
 if [ -f $i ]; 
  then
    text=$text'  <a href="./'$i'"><img src="./'$i'"></a>';
    text=$text"
";
    json=$json'{"src": "'$i'"}'
  else
    for j in $i/*; do
     text=$text'  <a href="./'$j'"><img src="./'$j'"></a>
 ';
    text=$text"
";

     json=$json'{"src": "'$j'"}'
   done
  fi 
done

text=$text'
</main>
</body>
</html>'
echo $text > index.html
