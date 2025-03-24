
using { Currency,managed,sap.common.CodeList } from '@sap/cds/common';

context schema {

entity Books : managed {
Key ID : Integer;
title : localized String(111);
descr : localized String(111);
author : Association to Authors;
stocks : Integer;
price : Decimal(9,2);
currency_code : Currency;
genres : Association to Genres;
};

entity Authors : managed {
Key ID : Integer;
name : String(111);
books : Association to many Books on books.author = $self;

};

entity Genres : CodeList {
Key ID : Integer;
parent : Association to Genres;
children : Composition of many Genres on children.parent = $self;
};

    
}
