//
//  Model.swift
//  HW15-Khrapov
//
//  Created by Anton on 19.09.2022.
//

import Foundation

struct CellModels {
    var type: CellType
    var isSystemImage: Bool
    var image: String
    var imageColor: String
    var name: String
    var detailTextLabel: String?
}

enum CellType: String {
    case switchType
    case textType
    case defaultType
}

extension CellModels {
    static var cells: [[CellModels]] = [
        [CellModels(type: .switchType,
                    isSystemImage: true,
                    image: "airplane",
                    imageColor: "systemOrange",
                    name: "Авиарежим"),
         CellModels(type: .textType,
                    isSystemImage: true,
                    image: "wifi",
                    imageColor: "systemBlue",
                    name: "Wi-Fi",
                    detailTextLabel: "TP-Link_44"),
         CellModels(type: .textType,
                    isSystemImage: false,
                    image: "bluetooth",
                    imageColor: "systemBlue",
                    name: "Bluetooth",
                    detailTextLabel: "Вкл."),
         CellModels(type: .defaultType,
                    isSystemImage: true,
                    image: "antenna.radiowaves.left.and.right",
                    imageColor: "systemGreen",
                    name: "Сотовая связь"),
         CellModels(type: .textType,
                    isSystemImage: true,
                    image: "personalhotspot",
                    imageColor: "systemGreen",
                    name: "Режим модема",
                    detailTextLabel: "Выкл."),
         CellModels(type: .textType,
                    isSystemImage: false,
                    image: "vpn",
                    imageColor: "systemBlue",
                    name: "VPN",
                    detailTextLabel: "Не подключено")],
        
        [CellModels(type: .defaultType,
                    isSystemImage: true,
                    image: "app.badge",
                    imageColor: "systemRed",
                    name: "Уведомления"),
         CellModels(type: .defaultType,
                    isSystemImage: true,
                    image: "speaker.wave.3.fill",
                    imageColor: "systemRed",
                    name: "Звуки, тактильные сигналы"),
         CellModels(type: .defaultType,
                    isSystemImage: true,
                    image: "moon.fill",
                    imageColor: "systemIndigo",
                    name: "Не беспокоить"),
         CellModels(type: .defaultType,
                    isSystemImage: true,
                    image: "hourglass",
                    imageColor: "systemIndigo",
                    name: "Экранное время")],
        
        [CellModels(type: .defaultType,
                    isSystemImage: true,
                    image: "gear",
                    imageColor: "systemGray2",
                    name: "Основные"),
         CellModels(type: .defaultType,
                    isSystemImage: true,
                    image: "switch.2",
                    imageColor: "systemGray2",
                    name: "Пункт управления"),
         CellModels(type: .defaultType,
                    isSystemImage: true,
                    image: "textformat.size",
                    imageColor: "systemBlue",
                    name: "Экран и яркость"),
         CellModels(type: .defaultType,
                    isSystemImage: true,
                    image: "apps.ipad",
                    imageColor: "blue",
                    name: "Экран«Домой»"),
         CellModels(type: .defaultType,
                    isSystemImage: false,
                    image: "universal",
                    imageColor: "systemBlue",
                    name: "Универсальный доступ"),
         CellModels(type: .defaultType,
                    isSystemImage: false,
                    image: "wallpapper",
                    imageColor: "lightBlue",
                    name: "Обои"),
         CellModels(type: .defaultType,
                    isSystemImage: false,
                    image: "siri",
                    imageColor: "systemIndigo",
                    name: "Siri и Поиск"),
         CellModels(type: .defaultType,
                    isSystemImage: true,
                    image: "faceid",
                    imageColor: "systemGreen",
                    name: "Face ID и код-пароль"),
         CellModels(type: .defaultType,
                    isSystemImage: false,
                    image: "sos",
                    imageColor: "systemRed",
                    name: "Экстренный вызов - SOS"),
         CellModels(type: .defaultType,
                    isSystemImage: false,
                    image: "microbe",
                    imageColor: "white",
                    name: "Уведомления о контакте"),
         CellModels(type: .defaultType,
                    isSystemImage: true,
                    image: "battery.100",
                    imageColor: "systemGreen",
                    name: "Аккумулятор"),
         CellModels(type: .defaultType,
                    isSystemImage: true,
                    image: "hand.raised.fill",
                    imageColor: "systemBlue",
                    name: "Конфиденциальность")
        ]
    ]
}
