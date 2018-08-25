package com.ecommerceproject.service.impl;


import com.ecommerceproject.dao.CartItemDao;
import com.ecommerceproject.model.Cart;
import com.ecommerceproject.model.CartItem;
import com.ecommerceproject.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartItemServiceImpl implements CartItemService{

    @Autowired
    private CartItemDao cartItemDao;

    public void addCartItem(CartItem cartItem){
        cartItemDao.addCartItem(cartItem);
    }

    public void removeCartItem(CartItem cartItem){
    	try {
        cartItemDao.removeCartItem(cartItem);
        }
    	catch (Exception e) {
    			e.printStackTrace();
    	}
    }

    public void removeAllCartItems(Cart cart){
        cartItemDao.removeAllCartItems(cart);
    }

    public CartItem getCartItemByProductId(int productId){
        return cartItemDao.getCartItemByProductId(productId);
    }

	@Override
	public void updateCartItem(CartItem cartItem) {
		 cartItemDao.updateCartItem(cartItem);
		
	}

} // The End of Class;
