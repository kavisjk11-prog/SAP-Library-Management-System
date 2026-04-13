@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: 'Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZKJKLIB_BOOK_TAB_1656'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZKJKC_LIB_BOOK_TAB_1656
  provider contract transactional_query
  as projection on ZKJKR_LIB_BOOK_TAB_1656
  association [1..1] to ZKJKR_LIB_BOOK_TAB_1656 as _BaseEntity on $projection.BookUUID = _BaseEntity.BookUUID
{
  key BookUUID,
  BookID,
  Title,
  Author,
  PublishYear,
  Isbn,
  Genre,
  Status,
  @Semantics: {
    user.createdBy: true
  }
  CreatedBy,
  @Semantics: {
    systemDateTime.createdAt: true
  }
  CreatedAt,
  @Semantics: {
    user.lastChangedBy: true
  }
  LastChangedBy,
  @Semantics: {
    systemDateTime.lastChangedAt: true
  }
  LastChangedAt,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  LocalLastChanged,
  _BaseEntity
}
