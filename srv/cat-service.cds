using store.commerce as commerce from '../db/data-model';

service InventoryService {
  entity Products  as projection on commerce.Products;
  entity  SubCategory as projection on commerce.SubCategory;
  entity Category  as projection on commerce.Category;
}