//
//  Product.swift
//  Store-Apple-Electronics-App_KK
//
//  Created by MacBook on 31.03.2022.
//


struct Device {
    let name: String
    let detail: String
    
    var title: String {
        "\(name) \r \(detail)"
    }
    
    static func getProductList() -> [Device] {
        [
            Device(name: "iPhone 6", detail: "some information about product"),
            Device(name: "iPhone 8", detail: "some information about product"),
            Device(name: "iPhone SE", detail: "some information about product"),
            Device(name: "MacBook Pro 2021", detail: "some information about product"),
            Device(name: "iPad 2", detail: "some information about product"),
            Device(name: "iPhone 12 Pro", detail: "some information about product"),
            Device(name: "iPhone 3G", detail: "some information about product"),
            Device(name: "MacBook Air 2017", detail: "some information about product"),
            Device(name: "iWatch 1 gen", detail: "some information about product"),
            Device(name: "iWatch 2 gen", detail: "some information about product")
        ]
    }
}
