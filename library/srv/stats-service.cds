using my.bookshop from '../db/schema';


service Stats {
    @readonly
    entity OrdersInfo as projection on bookshop.Orders excluding {
        createdAt,
        book,
        createdBy,
        modifiedAt,
        modifiedBy
    };

}
