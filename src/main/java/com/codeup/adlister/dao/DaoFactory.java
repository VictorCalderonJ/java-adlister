package com.codeup.adlister.dao;

import java.sql.Connection;

public class DaoFactory {
    private static Ads adsDao;
    private static Users userDao;
    private static final config config = new config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    
    public static Users getUsersDao() {
        if (userDao == null){
            userDao = new MySQLUsersDao(config);
        }
        return userDao;
    }
    
}
