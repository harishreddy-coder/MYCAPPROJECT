using {schema as ss } from '../db/schema';

service AdminService @(requires : 'authenticated-user') {
    entity Books as projection on ss.Books;
    entity Authors as projection on ss.Authors;
}
