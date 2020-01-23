//
//  Enums.swift
//  SrcDataDictV0.2
//
//  Created by Brian on 20/01/2020.
//  Copyright © 2020 Brian. All rights reserved.
//

import Foundation

//ENUMS

/** <b>Description: </b>Enumerates the different types application blah blah blah */
enum ApplicationType{
    case WEB_BROWSER
    case MOBILE_APP
    case IOT_DEVICE
    case OTHER
}

/** <b>Description: </b>blah blah blah */
enum ConsumerStatus{
    case ACTIVE
    case SUSPENDED
    case LOCKED
}

/** Enumerates the different types of DymanicData  Blah blah blah */
enum DynamicDataType{
    case CARD_APPLICATION_CRYPTOGRAM_SHORT_FORM
    case CARD_APPLICATION_CRYPTOGRAM_LONG_FORM
    case DYNAMIC_CARD_SECURITY_CODE
    case CARDHOLDER_AUTHENTICATION_CRYPTOGRAM
    case NONE

}

/** Defines the type of Payload being requested */
enum PayloadTypeIndicator{
    case SUMMARY
    case FULL
    case PAYMENT
    case NON_PAYMENT
}
