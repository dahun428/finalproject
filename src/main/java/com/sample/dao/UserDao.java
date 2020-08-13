package com.sample.dao;

import java.util.List;

import com.sample.web.view.Coupon;
import com.sample.web.view.User;
import com.sample.web.view.UserBadge;

public interface UserDao {
    void insertUser(User user);
    void updateUser(User user);
    User getUserById(String userId);
    List<Coupon> getCouponsByUserId(String userId);
    List<UserBadge> getBadgesByUserId(String userId);
    List<User> getUsersByMateId(int mateId);
    List<User> getAllUsers();
}