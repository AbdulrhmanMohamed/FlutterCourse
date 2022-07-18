

import 'package:flutter/foundation.dart';

class Cats {

  String ?id;
  String ?content;
  String ?title;
  String ?picture;

  Cats(this.id,this.content,this.title,this.picture){}

  factory Cats.json(Map<String ,dynamic> cat){
      return Cats(cat['id'], cat['content'], cat['title'], cat['picture']);
  }
}