using { schema as ss } from '../db/schema';

service CatalogService @(path : '/browse') {
    @readonly
    entity Books as select from ss.Books {
        *,
        author.name as author
    } excluding { createdBy, modifiedBy};

    @requires : 'authanticated-user'
    action submitorders(books : Books:ID , quantity : Integer);

}
