package com.Facing

import org.omg.CORBA.PUBLIC_MEMBER

/**
 * Created by anuboolean j on 16/11/16.
 */
enum Facing {
    NORTH, SOUTH, EAST, WEST

    public static List<Facing> list() {
        return [NORTH, SOUTH, EAST, WEST]
    }

}