package com.ecommerceproject.service;

import com.ecommerceproject.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
