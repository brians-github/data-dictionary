//
//  DataStructures.swift
//  SrcDataDictV0.2
//
//  Created by Brian on 20/01/2020.
//  Copyright © 2020 Brian. All rights reserved.
//

import Foundation

/** Description of card
 */
struct Card {
    /**<b>This field is Required</b> <br>*/
    /**A variable length, ISO/IEC 7812-compliant account number that is generated within account ranges associated with a BIN by a Card Issuer</b> <br>*/
    /** <b>Constraints:</b> Length 9 to 19 numeric characters */
    var primaryAccountNumber: String
    
    /** <b>This field is Conditional: </b>Description blah blah blah <br>*/
    /** <b>Constraints:</b> Length = 2 characters */
    var panExpirationMonth: String
    
    /** <b>This field is Conditional: </b>Description blah blah blah <br>*/
    /** <b>Constraints:</b> Length = 4 characters */
    var panExpirationYear: String
    
    /** <b>This field is Optional </b><br>*/
    /** <b>Constraints:</b> Length =  3 or 4 characters*/
    var cardSecurityCode: String
    
    /** <b>This field is Optional </b><br>*/
    /** <b>Constraints:</b> Length =  100 characters*/
    var cardholderFullName: String
    
    /** <b>This field is Optional </b><br>*/
    /** <b>Constraints:</b> Length =  50 characters*/
    var cardholderFirstName: String
    
    /** <b>This field is Optional </b><br>*/
    /** <b>Constraints:</b> Length =  50 characters*/
    var cardholderLastName: String
    
    /** <b>This field is Optional </b><br>*/
    var billingAddress: Address
  
    /** <b>Description|: </b>A non-financial reference assigned to each unique PAN and used to link a Payment Account represented by that PAN to affiliated Payment Tokens<br>*/
    /** <b>This field is Optional </b><br>*/
    /** <b>Constraints:</b> Length =  29 characters*/
    var paymentAccountReference: String
}

/** Description of Dynamic Data
*/
struct DynamicData {
    /**<b>This field is Required</b>*/
    let dynamicDataValue: String
    /**<b>This field is Required</b>*/
    var dynamicDataType: DynamicDataType
}

/** Description of Payload
*/
struct Payload {
    /** <b>This field is Conditional: </b>Description blah blah blah*/
    var card: Card
    /** <b>This field is Conditional: </b>Description blah blah blah*/
    var token: PaymentToken
    /** <br>This field is Conditional: </b>Description blah blah blah*/
    var shippingAddress: Address
    /**
     * <b>This field is Conditional:</b> Description blah blah blah <br>
     * <b>Constraints:</b> Maximum length = 255*
    */
    var consumerEmailAddress: String
    /**
     * <b>This field is Conditional:</b> Description blah blah blah <br>
     * <b>Constraints:</b> Maximum length = 50
    */
    var consumerFirstName: String
    /**<b>This field is Required</b>*/
    var dynamicData: [DynamicData]
}

/** Description blah blah blah
*/
struct PaymentToken {
    /**<b>This field is Required</b><br>*/
    /**<b>Constraints:</b>Different to PAN <br>*/
    var paymentToken: String
    var tokenExpirationMonth: String
    var tokenExpirationYear: String
    /** <b>This field is Optional </b><br>*/
    /** <b>Constraints:</b> Length =  100 characters*/
    var cardholderFullName: String
      
    /** <b>This field is Optional </b><br>*/
    /** <b>Constraints:</b> Length =  50 characters*/
    var cardholderFirstName: String
      
    /** <b>This field is Optional </b><br>*/
    /** <b>Constraints:</b> Length =  50 characters*/
    var cardholderLastName: String
  
    /** <b>Description|: </b>A non-financial reference assigned to each unique PAN and used to link a Payment Account represented by that PAN to affiliated Payment Tokens<br>*/
    /** <b>This field is Optional </b><br>*/
    /** <b>Constraints:</b> Length =  29 characters*/
    var paymentAccountReference: String
}

/** Description blah blah blah
*/
struct Address{
    var addressId: String ///O UUID
    /** <b>This field is Optional</b><br>*/
    /** <b>Constraint:</b> Max lenth = 100*/
    var name: String
    /** <b>This field is Optional</b><br>*/
    /** <b>Constraint:</b> Max lenth = 100*/
    var line1: String
}
