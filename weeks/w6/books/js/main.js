var books = [
  {title: 'The Design of EveryDay Things',
   author: 'Don Norman',
   alreadyRead: false
  },
  {title: 'The Most Human Human',
  author: 'Brian Christian',
  alreadyRead: true
  }];

  var body = document.getElementsByTagName('body')[0];





    for (j = 0; j < books.length; j++) {
      var p = document.createElement('p');
      var ul = document.createElement('ul');
      var li1 = document.createElement('li');
      var li2 = document.createElement('li');
      p.innerHTML = books[j].title;
      li1.innerHTML = "Author: " + books[j].author;
      li2.innerHTML = "Already Read: " + books[j].alreadyRead;
      body.appendChild(p);
      p.appendChild(ul);
      ul.appendChild(li1);
      ul.appendChild(li2);

      if (!books[j].alreadyRead) {
        p.style.color = 'red';
      }
    }

