package com.ecommerceproject.dao;


import com.ecommerceproject.model.Cart;
import com.ecommerceproject.model.CartItem;

public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    public void updateCartItem(CartItem cartItem);
    
    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);
}
