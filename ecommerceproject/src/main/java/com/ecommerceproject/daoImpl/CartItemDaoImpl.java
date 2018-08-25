package com.ecommerceproject.daoImpl;

import com.ecommerceproject.dao.CartItemDao;
import com.ecommerceproject.model.Cart;
import com.ecommerceproject.model.CartItem;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao{

    @Autowired
    private SessionFactory sessionFactory;

    public void addCartItem(CartItem cartItem){
        Session session = sessionFactory.getCurrentSession();
        session.save(cartItem);
    }

    public void updateCartItem(CartItem cartItem){
        Session session = sessionFactory.getCurrentSession();
        session.update(cartItem);
    }

    public void removeCartItem(CartItem cartItem){
        try {
    	Session session = sessionFactory.getCurrentSession();
        session.delete(cartItem);
        }
        catch (Exception e) {
        	e.printStackTrace();
        }
    }

    public void removeAllCartItems(Cart cart){
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems){
            removeCartItem(item);
        }
    }

    public CartItem getCartItemByProductId(int productId){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CartItem where productId = ?");
        query.setInteger(0, productId);

        return (CartItem) query.uniqueResult();
    }

} // The End of Class;
