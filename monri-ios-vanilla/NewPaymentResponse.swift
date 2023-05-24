//
//  NewPaymentResponse.swift
//  monri-ios-vanilla
//
//  Created by Harun Kološ on 24. 5. 2023..
//

import Foundation

public class NewPaymentResponse {
    public let clientSecret: String
    public let status: String

    public init(clientSecret: String, status: String) {
        self.clientSecret = clientSecret
        self.status = status
    }

    public static func fromJson(_ json: Dictionary<String, Any>) -> NewPaymentResponse? {
        return NewPaymentResponse(clientSecret: json["client_secret"] as! String, status: json["status"] as! String)
    }
}
