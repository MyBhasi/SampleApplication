package com.property

import com.sample_application.property.Property
import grails.validation.Validateable


@Validateable
class PropertyCO {
    String address
    int pincode
    String city
    String propertyFor
    byte[] image
    String propertyType
    long price
    String bedRoom
    String size
    static constraints =
            {
                importFrom Property
                price blank: false

                propertyFor blank: null
                propertyType blank: false, validator: { val, obj ->
                    if (val?.equals('Commercial')) {
                        size blank: false, nullable: false
                        bedRoom blank: true, nullable: true
                    }
                    if (val?.equals('Residential')) {
                        bedRoom blank: false, nullable: false, notEqual: null
                        size blank: true, nullable: true

                    }

                    return true

                }

                image nullable: true

            }

}



