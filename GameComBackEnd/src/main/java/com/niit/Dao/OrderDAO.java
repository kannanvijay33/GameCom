package com.niit.Dao;
import java.util.List;
import com.niit.model.Cart;
import com.niit.model.Orders;

public interface OrderDAO
{
	public boolean createOrder(Orders orders);
	public List<Cart> completedOrders(int userId);
}
