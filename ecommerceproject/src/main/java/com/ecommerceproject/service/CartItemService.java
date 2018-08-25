package com.ecommerceproject.service;


import com.ecommerceproject.model.Cart;
import com.ecommerceproject.model.CartItem;

public interface CartItemService {

    void addCartItem(CartItem cartItem);
    public void updateCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
