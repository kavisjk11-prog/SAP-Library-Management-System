@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZKJKLIB_BOOK_TAB_1656'
@EndUserText.label: 'Core Data Service Entity'
define root view entity ZKJKR_LIB_BOOK_TAB_1656
  as select from zlib_book_tab_1
{
  key book_uuid as BookUUID,
  book_id as BookID,
  title as Title,
  author as Author,
  publish_year as PublishYear,
  isbn as Isbn,
  genre as Genre,
  status as Status,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed as LocalLastChanged
}
