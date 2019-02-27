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
    text=$text'  <div class="image-cell"><a href="./'$i'"><img src="./'$i'"></a></div>';
    text=$text"
";
    json=$json'{"src": "'$i'"}'
  else
    for j in $i/*; do
     text=$text'  <div class="image-cell"><a href="./'$j'"><img src="./'$j'"></a></div>
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
echo -e "${text}" > index.html
