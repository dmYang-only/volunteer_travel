package com.example.dm.volunteer_travel.util;

import java.util.UUID;

/**
 * @author admin
 *  uuid生成
 */
public class IdGenerator {

    public static String id() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }
}
