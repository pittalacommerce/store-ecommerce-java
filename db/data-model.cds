namespace store.commerce;
using {cuid, Country, managed } from '@sap/cds/common';


entity Category:cuid,managed {
 name   : String;
 subcategory : Association to many SubCategory on subcategory.category = $self;
 product: Association to many Products on  product.category = $self;
}

entity SubCategory:cuid,managed {
  name   : String;
  category: Association to Category;
  product:Association to many Products on product.subcategory = $self; @assert.integrity:true
  image : LargeBinary @Core.MediaType: 'image/jpg';
  imageType : String  @Core.IsMediaType;
}

entity Products:cuid,managed {
  name  :  String;
  category: Association to Category;
  subcategory : Association to  SubCategory;
  image : LargeBinary @Core.MediaType: 'image/jpg';
  imageType : String  @Core.IsMediaType;
}

