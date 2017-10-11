package com.niit.Dao;

import java.util.List;
import java.util.Locale.Category;

public interface CategoryDao 
{
  public boolean addCategory(com.niit.model.Category category);
  public List<Category>  retrieveCategory();
  public boolean deleteCategory(com.niit.model.Category category);
  public Category getCategory(int cadId);
  public boolean updateCategory(com.niit.model.Category category);

}
