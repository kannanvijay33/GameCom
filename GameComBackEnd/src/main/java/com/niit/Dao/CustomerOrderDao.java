package com.niit.Dao;


import java.util.List;

import com.niit.model.Cart;
import com.niit.model.CustomerOrder;
import com.niit.model.ShippingAddress;

public interface CustomerOrderDao
{
	CustomerOrder Createorder(Cart cart,ShippingAddress s);
	 List<ShippingAddress> getshippingbyid(String id);
	 ShippingAddress getshipping(int id);
	 void saveshipping(ShippingAddress shipping);
	

}
