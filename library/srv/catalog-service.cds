using my.bookshop as my from '../db/schema';

service CatalogService @(impl: 'srv/cat-service.js') {
    @readonly entity Books as projection on my.Books;
    @Capabilities : { Deletable: true, Insertable: false, Updatable: false}
    entity Authors as projection on my.Authors;
    entity Orders as projection on my.Orders;
}
