//
//  Countries.swift
//  Messenger
//
//  Created by Mihael Isaev on 25.11.2020.
//  Copyright © 2020 Mihael Isaev. All rights reserved.
//

import Foundation

struct Countries {
    private static var usa: Country {
        .init("US", .init(.ru("США"), .en("United States of America")), "1", "### ###-####", "555 555-0000")
    }
    
    static var current: Country {
        guard let countryId = Locale.current.identifier.components(separatedBy: "_").last,
            let country = list.first(where: { $0.id == countryId }) else {
                return usa
        }
        return country
    }
    
    static var list: [Country] {
        [.init("AF", .init(.ru("Афганистан"), .en("Afghanistan")), "93"),
         .init("AX", .init(.ru("Аландские острова"), .en("Aland Islands")), "358"),
         .init("AL", .init(.ru("Албания"), .en("Albania")), "355"),
         .init("DZ", .init(.ru("Алжир"), .en("Algeria")), "213"),
         .init("AS", .init(.ru("Американское Самоа"), .en("American Samoa")), "1"),
         .init("AD", .init(.ru("Андора"), .en("Andorra")), "376"),
         .init("AO", .init(.ru("Ангола"), .en("Angola")), "244"),
         .init("AI", .init(.ru("Ангилья"), .en("Anguilla")), "1"),
         .init("AQ", .init(.ru("Антарктика"), .en("Antarctica")), "672"),
         .init("AG", .init(.ru("Антигуа и Барбуда"), .en("Antigua and Barbuda")), "1"),
         .init("AR", .init(.ru("Аргентина"), .en("Argentina")), "54"),
         .init("AM", .init(.ru("Армения"), .en("Armenia")), "374"),
         .init("AW", .init(.ru("Аруба"), .en("Aruba")), "297"),
         .init("AU", .init(.ru("Австралия"), .en("Australia")), "61"),
         .init("AT", .init(.ru("Австрия"), .en("Austria")), "43"),
         .init("AZ", .init(.ru("Азербайджан"), .en("Azerbaijan")), "994"),
         .init("BS", .init(.ru("Багамы"), .en("Bahamas")), "1"),
         .init("BH", .init(.ru("Бахрейн"), .en("Bahrain")), "973"),
         .init("BD", .init(.ru("Бангладеш"), .en("Bangladesh")), "880"),
         .init("BB", .init(.ru("Барбадос"), .en("Barbados")), "1"),
         .init("BY", .init(.ru("Беларусь"), .en("Belarus")), "375"),
         .init("BE", .init(.ru("Бельгия"), .en("Belgium")), "32"),
         .init("BZ", .init(.ru("Белиз"), .en("Belize")), "501"),
         .init("BJ", .init(.ru("Бенин"), .en("Benin")), "229"),
         .init("BM", .init(.ru("Бермуды"), .en("Bermuda")), "1"),
         .init("BT", .init(.ru("Бутан"), .en("Bhutan")), "975"),
         .init("BO", .init(.ru("Боливия"), .en("Bolivia")), "591"),
         .init("BA", .init(.ru("Босния и Герцеговина"), .en("Bosnia and Herzegovina")), "387"),
         .init("BW", .init(.ru("Ботсвана"), .en("Botswana")), "267"),
         .init("BV", .init(.ru("Остров Буве"), .en("Bouvet Island")), "47"),
         .init("BQ", .init(.ru("BQ"), .en("BQ")), "599"),
         .init("BR", .init(.ru("Бразилия"), .en("Brazil")), "55"),
         .init("IO", .init(.ru("Британская территория в Индийском океане"), .en("British Indian Ocean Territory")), "246"),
         .init("VG", .init(.ru("Британские Виргинские острова"), .en("British Virgin Islands")), "1"),
         .init("BN", .init(.ru("Бруней"), .en("Brunei Darussalam")), "673"),
         .init("BG", .init(.ru("Болгария"), .en("Bulgaria")), "359"),
         .init("BF", .init(.ru("Буркина-Фасо"), .en("Burkina Faso")), "226"),
         .init("BI", .init(.ru("Бурунди"), .en("Burundi")), "257"),
         .init("KH", .init(.ru("Камбоджа"), .en("Cambodia")), "855"),
         .init("CM", .init(.ru("Камерун"), .en("Cameroon")), "237"),
         .init("CA", .init(.ru("Канада"), .en("Canada")), "1"),
         .init("CV", .init(.ru("Кабо-Верде"), .en("Cape Verde")), "238"),
         .init("KY", .init(.ru("Острова Кайман"), .en("Cayman Islands")), "345"),
         .init("CF", .init(.ru("Центральноафриканская Республика"), .en("Central African Republic")), "236"),
         .init("TD", .init(.ru("Чад"), .en("Chad")), "235"),
         .init("CL", .init(.ru("Чили"), .en("Chile")), "56"),
         .init("CN", .init(.ru("Китай"), .en("China")), "86", "## #### ####", "10 5555 8888"),
         .init("CX", .init(.ru("Остров Рождества"), .en("Christmas Island")), "61"),
         .init("CC", .init(.ru("Кокосовые острова"), .en("Cocos (Keeling) Islands")), "61"),
         .init("CO", .init(.ru("Колумбия"), .en("Colombia")), "57"),
         .init("KM", .init(.ru("Коморы"), .en("Comoros")), "269"),
         .init("CG", .init(.ru("Конго"), .en("Congo (Brazzaville)")), "242"),
         .init("CD", .init(.ru("ДР Конго"), .en("Congo, Democratic Republic of the")), "243"),
         .init("CK", .init(.ru("Острова Кука"), .en("Cook Islands")), "682"),
         .init("CR", .init(.ru("Коста-Рика"), .en("Costa Rica")), "506"),
         .init("CI", .init(.ru("Кот-д'Ивуар"), .en("Côte d'Ivoire")), "225"),
         .init("HR", .init(.ru("Хорватия"), .en("Croatia")), "385"),
         .init("CU", .init(.ru("Куба"), .en("Cuba")), "53"),
         .init("CW", .init(.ru("Кюрасао"), .en("Curacao")), "599"),
         .init("CY", .init(.ru("Кипр"), .en("Cyprus")), "537"),
         .init("CZ", .init(.ru("Чехия"), .en("Czech Republic")), "420"),
         .init("DK", .init(.ru("Дания"), .en("Denmark")), "45"),
         .init("DJ", .init(.ru("Джибути"), .en("Djibouti")), "253"),
         .init("DM", .init(.ru("Доминика"), .en("Dominica")), "1"),
         .init("DO", .init(.ru("Доминиканская Республика"), .en("Dominican Republic")), "1"),
         .init("EC", .init(.ru("Эквадор"), .en("Ecuador")), "593"),
         .init("EG", .init(.ru("Египет"), .en("Egypt")), "20"),
         .init("SV", .init(.ru("Сальвадор"), .en("El Salvador")), "503"),
         .init("GQ", .init(.ru("Экваториальная Гвинея"), .en("Equatorial Guinea")), "240"),
         .init("ER", .init(.ru("Эритрея"), .en("Eritrea")), "291"),
         .init("EE", .init(.ru("Эстония"), .en("Estonia")), "372"),
         .init("ET", .init(.ru("Эфиопия"), .en("Ethiopia")), "251"),
         .init("FK", .init(.ru("Фолклендские острова"), .en("Falkland Islands (Malvinas)")), "500"),
         .init("FO", .init(.ru("Фарерские острова"), .en("Faroe Islands")), "298"),
         .init("FJ", .init(.ru("Фиджи"), .en("Fiji")), "679"),
         .init("FI", .init(.ru("Финляндия"), .en("Finland")), "358"),
         .init("FR", .init(.ru("Франция"), .en("France")), "33"),
         .init("GF", .init(.ru("Французская Гвиана"), .en("French Guiana")), "594"),
         .init("PF", .init(.ru("Французская Полинезия"), .en("French Polynesia")), "689"),
         .init("TF", .init(.ru("Французские Южные и Антарктические Территории"), .en("French Southern Territories")), "689"),
         .init("GA", .init(.ru("Габон"), .en("Gabon")), "241"),
         .init("GM", .init(.ru("Гамбия"), .en("Gambia")), "220"),
         .init("GE", .init(.ru("Грузия"), .en("Georgia")), "995"),
         .init("DE", .init(.ru("Германия"), .en("Germany")), "49"),
         .init("GH", .init(.ru("Гана"), .en("Ghana")), "233"),
         .init("GI", .init(.ru("Гибралтар"), .en("Gibraltar")), "350"),
         .init("GR", .init(.ru("Греция"), .en("Greece")), "30"),
         .init("GL", .init(.ru("Гринландия"), .en("Greenland")), "299"),
         .init("GD", .init(.ru("Гренада"), .en("Grenada")), "1"),
         .init("GP", .init(.ru("Гваделупа"), .en("Guadeloupe")), "590"),
         .init("GU", .init(.ru("Гуам"), .en("Guam")), "1"),
         .init("GT", .init(.ru("Гватемала"), .en("Guatemala")), "502"),
         .init("GG", .init(.ru("Гернси"), .en("Guernsey")), "44"),
         .init("GN", .init(.ru("Гвинея"), .en("Guinea")), "224"),
         .init("GW", .init(.ru("Гвинея-Бисау"), .en("Guinea-Bissau")), "245"),
         .init("GY", .init(.ru("Гайана"), .en("Guyana")), "595"),
         .init("HT", .init(.ru("Гаити"), .en("Haiti")), "509"),
         .init("VA", .init(.ru("Святой Престол"), .en("Holy See (Vatican City State)")), "379"),
         .init("HN", .init(.ru("Гондурас"), .en("Honduras")), "504"),
         .init("HK", .init(.ru("Гонконг"), .en("Hong Kong, Special Administrative Region of China")), "852"),
         .init("HU", .init(.ru("Венгрия"), .en("Hungary")), "36"),
         .init("IS", .init(.ru("Исландия"), .en("Iceland")), "354"),
         .init("IN", .init(.ru("Индия"), .en("India")), "91"),
         .init("ID", .init(.ru("Индонезия"), .en("Indonesia")), "62"),
         .init("IR", .init(.ru("Иран"), .en("Iran, Islamic Republic of")), "98"),
         .init("IQ", .init(.ru("Ирак"), .en("Iraq")), "964"),
         .init("IE", .init(.ru("Ирландия"), .en("Ireland")), "353"),
         .init("IM", .init(.ru("Остров Мэн"), .en("Isle of Man")), "44"),
         .init("IL", .init(.ru("Израиль"), .en("Israel")), "972"),
         .init("IT", .init(.ru("Италия"), .en("Italy")), "39"),
         .init("JM", .init(.ru("Ямайка"), .en("Jamaica")), "1"),
         .init("JP", .init(.ru("Япония"), .en("Japan")), "81"),
         .init("JE", .init(.ru("Джерси"), .en("Jersey")), "44"),
         .init("JO", .init(.ru("Иордан"), .en("Jordan")), "962"),
         .init("KZ", .init(.ru("Казахстан"), .en("Kazakhstan")), "77"),
         .init("KE", .init(.ru("Кения"), .en("Kenya")), "254"),
         .init("KI", .init(.ru("Кирибати"), .en("Kiribati")), "686"),
         .init("KP", .init(.ru("ДР Корея"), .en("Korea, Democratic People's Republic of")), "850"),
         .init("KR", .init(.ru("Корея"), .en("Korea, Republic of")), "82"),
         .init("KW", .init(.ru("Кувейт"), .en("Kuwait")), "965"),
         .init("KG", .init(.ru("Киргизия"), .en("Kyrgyzstan")), "996"),
         .init("LA", .init(.ru("Лаос"), .en("Laos")), "856"),
         .init("LV", .init(.ru("Латвия"), .en("Latvia")), "371"),
         .init("LB", .init(.ru("Ливан"), .en("Lebanon")), "961"),
         .init("LS", .init(.ru("Лесото"), .en("Lesotho")), "266"),
         .init("LR", .init(.ru("Либерия"), .en("Liberia")), "231"),
         .init("LY", .init(.ru("Ливия"), .en("Libya")), "218"),
         .init("LI", .init(.ru("Лихтенштейн"), .en("Liechtenstein")), "423"),
         .init("LT", .init(.ru("Литва"), .en("Lithuania")), "370"),
         .init("LU", .init(.ru("Люксембург"), .en("Luxembourg")), "352"),
         .init("MO", .init(.ru("Макао"), .en("Macao, Special Administrative Region of China")), "853"),
         .init("MK", .init(.ru("Македония"), .en("Macedonia, Republic of")), "389"),
         .init("MG", .init(.ru("Мадагаскар"), .en("Madagascar")), "261"),
         .init("MW", .init(.ru("Малави"), .en("Malawi")), "265"),
         .init("MY", .init(.ru("Малайзия"), .en("Malaysia")), "60"),
         .init("MV", .init(.ru("Мальдивы"), .en("Maldives")), "960"),
         .init("ML", .init(.ru("Мали"), .en("Mali")), "223"),
         .init("MT", .init(.ru("Мальта"), .en("Malta")), "356"),
         .init("MH", .init(.ru("Маршалловы острова"), .en("Marshall Islands")), "692"),
         .init("MQ", .init(.ru("Мартиника"), .en("Martinique")), "596"),
         .init("MR", .init(.ru("Мавритания"), .en("Mauritania")), "222"),
         .init("MU", .init(.ru("Маврикий"), .en("Mauritius")), "230"),
         .init("YT", .init(.ru("Майотта"), .en("Mayotte")), "262"),
         .init("MX", .init(.ru("Мексика"), .en("Mexico")), "52"),
         .init("FM", .init(.ru("Микронезия"), .en("Micronesia, Federated States of")), "691"),
         .init("MD", .init(.ru("Молдова"), .en("Moldova")), "373"),
         .init("MC", .init(.ru("Монако"), .en("Monaco")), "377"),
         .init("MN", .init(.ru("Монголия"), .en("Mongolia")), "976"),
         .init("ME", .init(.ru("Черногория"), .en("Montenegro")), "382"),
         .init("MS", .init(.ru("Монтсеррат"), .en("Montserrat")), "1"),
         .init("MA", .init(.ru("Морокко"), .en("Morocco")), "212"),
         .init("MZ", .init(.ru("Мозамбик"), .en("Mozambique")), "258"),
         .init("MM", .init(.ru("Мьянма"), .en("Myanmar")), "95"),
         .init("NA", .init(.ru("Намибия"), .en("Namibia")), "264"),
         .init("NR", .init(.ru("Науру"), .en("Nauru")), "674"),
         .init("NP", .init(.ru("Непал"), .en("Nepal")), "977"),
         .init("NL", .init(.ru("Нидерланды"), .en("Netherlands")), "31"),
         .init("AN", .init(.ru("Нидерландские Антильские острова"), .en("Netherlands Antilles")), "599"),
         .init("NC", .init(.ru("Новая Каледония"), .en("New Caledonia")), "687"),
         .init("NZ", .init(.ru("Новая Зеландия"), .en("New Zealand")), "64"),
         .init("NI", .init(.ru("Никарагуа"), .en("Nicaragua")), "505"),
         .init("NE", .init(.ru("Нигер"), .en("Niger")), "227"),
         .init("NG", .init(.ru("Нигерия"), .en("Nigeria")), "234"),
         .init("NU", .init(.ru("Ниуэ"), .en("Niue")), "683"),
         .init("NF", .init(.ru("Остров Норфолк"), .en("Norfolk Island")), "672"),
         .init("MP", .init(.ru("Северные Марианские острова"), .en("Northern Mariana Islands")), "1"),
         .init("NO", .init(.ru("Норвегия"), .en("Norway")), "47"),
         .init("OM", .init(.ru("Оман"), .en("Oman")), "968"),
         .init("PK", .init(.ru("Пакистан"), .en("Pakistan")), "92"),
         .init("PW", .init(.ru("Палау"), .en("Palau")), "680"),
         .init("PS", .init(.ru("Палестиина"), .en("Palestinian Territory, Occupied")), "970"),
         .init("PA", .init(.ru("Панама"), .en("Panama")), "507"),
         .init("PG", .init(.ru("Папуа-Новая Гвинея"), .en("Papua New Guinea")), "675"),
         .init("PY", .init(.ru("Парагвай"), .en("Paraguay")), "595"),
         .init("PE", .init(.ru("Перу"), .en("Peru")), "51"),
         .init("PH", .init(.ru("Филлипины"), .en("Philippines")), "63"),
         .init("PN", .init(.ru("Острова Питкэрн"), .en("Pitcairn")), "872"),
         .init("PL", .init(.ru("Польша"), .en("Poland")), "48"),
         .init("PT", .init(.ru("Португалия"), .en("Portugal")), "351"),
         .init("PR", .init(.ru("Пуэрто-Рико"), .en("Puerto Rico")), "1"),
         .init("QA", .init(.ru("Катар"), .en("Qatar")), "974"),
         .init("RE", .init(.ru("Реюнион"), .en("Réunion")), "262"),
         .init("RO", .init(.ru("Румыния"), .en("Romania")), "40"),
         .init("RU", .init(.ru("Россия"), .en("Russian Federation")), "7", "(###) ###-##-##", "(555) 555-00-00"),
         .init("RW", .init(.ru("Руанда"), .en("Rwanda")), "250"),
         .init("SH", .init(.ru("Остров Святой Елены"), .en("Saint Helena")), "290"),
         .init("KN", .init(.ru("Сент-Китс и Невис"), .en("Saint Kitts and Nevis")), "1"),
         .init("LC", .init(.ru("Сент-Люсия"), .en("Saint Lucia")), "1"),
         .init("PM", .init(.ru("Сен-Пьер и Микелон"), .en("Saint Pierre and Miquelon")), "508"),
         .init("VC", .init(.ru("Сент-Винсент и Гренадины"), .en("Saint Vincent and Grenadines")), "1"),
         .init("BL", .init(.ru("Сен-Бартелеми"), .en("Saint-Barthélemy")), "590"),
         .init("MF", .init(.ru("Сен-Мартен"), .en("Saint-Martin (French part)")), "590"),
         .init("WS", .init(.ru("Самоа"), .en("Samoa")), "685"),
         .init("SM", .init(.ru("Сан-Марино"), .en("San Marino")), "378"),
         .init("ST", .init(.ru("Сан-Томе и Принсипи"), .en("Sao Tome and Principe")), "239"),
         .init("SA", .init(.ru("Саудовская Арабия"), .en("Saudi Arabia")), "966"),
         .init("SN", .init(.ru("Сенегал"), .en("Senegal")), "221"),
         .init("RS", .init(.ru("Сербия"), .en("Serbia")), "381"),
         .init("SC", .init(.ru("Сейшелы"), .en("Seychelles")), "248"),
         .init("SL", .init(.ru("Сьерра-Леоне"), .en("Sierra Leone")), "232"),
         .init("SG", .init(.ru("Сингапур"), .en("Singapore")), "65"),
         .init("SX", .init(.ru("Синт-Мартен"), .en("Sint Maarten")), "1"),
         .init("SK", .init(.ru("Словакия"), .en("Slovakia")), "421"),
         .init("SI", .init(.ru("Словения"), .en("Slovenia")), "386"),
         .init("SB", .init(.ru("Соломоновы острова"), .en("Solomon Islands")), "677"),
         .init("SO", .init(.ru("Сомали"), .en("Somalia")), "252"),
         .init("ZA", .init(.ru("Южная Африка"), .en("South Africa")), "27"),
         .init("GS", .init(.ru("Южная Георгия и Южные Сандвичевы острова"), .en("South Georgia and the South Sandwich Islands")), "500"),
         .init("SS", .init(.ru("Южный Судан"), .en("South Sudan")), "211"),
         .init("ES", .init(.ru("Испания"), .en("Spain")), "34"),
         .init("LK", .init(.ru("Шри-Ланка"), .en("Sri Lanka")), "94"),
         .init("SD", .init(.ru("Судан"), .en("Sudan")), "249"),
         .init("SR", .init(.ru("Суринам"), .en("Suriname")), "597"),
         .init("SJ", .init(.ru("Шпицберген"), .en("Svalbard and Jan Mayen Islands")), "47"),
         .init("SZ", .init(.ru("Эсватини"), .en("Swaziland")), "268"),
         .init("SE", .init(.ru("Швеция"), .en("Sweden")), "46"),
         .init("CH", .init(.ru("Швейцария"), .en("Switzerland")), "41"),
         .init("SY", .init(.ru("Сирия"), .en("Syrian Arab Republic (Syria)")), "963"),
         .init("TW", .init(.ru("Тайвань"), .en("Taiwan, Republic of China")), "886"),
         .init("TJ", .init(.ru("Таджикистан"), .en("Tajikistan")), "992"),
         .init("TZ", .init(.ru("Танзания"), .en("Tanzania, United Republic of")), "255"),
         .init("TH", .init(.ru("Тайланд"), .en("Thailand")), "66"),
         .init("TL", .init(.ru("Восточный Тимор"), .en("Timor-Leste")), "670"),
         .init("TG", .init(.ru("Того"), .en("Togo")), "228"),
         .init("TK", .init(.ru("Токелау"), .en("Tokelau")), "690"),
         .init("TO", .init(.ru("Тонга"), .en("Tonga")), "676"),
         .init("TT", .init(.ru("Тринидад и Тобаго"), .en("Trinidad and Tobago")), "1"),
         .init("TN", .init(.ru("Тунис"), .en("Tunisia")), "216"),
         .init("TR", .init(.ru("Турция"), .en("Turkey")), "90"),
         .init("TM", .init(.ru("Туркменистан"), .en("Turkmenistan")), "993"),
         .init("TC", .init(.ru("Острова Теркс и Кайкос"), .en("Turks and Caicos Islands")), "1"),
         .init("TV", .init(.ru("Тувалу"), .en("Tuvalu")), "688"),
         .init("UG", .init(.ru("Уганда"), .en("Uganda")), "256"),
         .init("UA", .init(.ru("Украина"), .en("Ukraine")), "380", "(##) ###-####", "(55) 555-0000"),
         .init("AE", .init(.ru("Арабские Эмираты"), .en("United Arab Emirates")), "971"),
         .init("GB", .init(.ru("Великобритания"), .en("United Kingdom")), "44"),
         usa,
         .init("UY", .init(.ru("Уругвай"), .en("Uruguay")), "598"),
         .init("UZ", .init(.ru("Узбекистан"), .en("Uzbekistan")), "998"),
         .init("VU", .init(.ru("Вануату"), .en("Vanuatu")), "678"),
         .init("VE", .init(.ru("Венесуэла"), .en("Venezuela (Bolivarian Republic of)")), "58"),
         .init("VN", .init(.ru("Вьетнам"), .en("Viet Nam")), "84"),
         .init("VI", .init(.ru("Американские Виргинские острова"), .en("Virgin Islands, US")), "1"),
         .init("WF", .init(.ru("Острова Уоллис и Футуна"), .en("Wallis and Futuna Islands")), "681"),
         .init("EH", .init(.ru("Западная Сахара"), .en("Western Sahara")), "212"),
         .init("YE", .init(.ru("Йемен"), .en("Yemen")), "967"),
         .init("ZM", .init(.ru("Замбия"), .en("Zambia")), "260"),
         .init("ZW", .init(.ru("Зимбабве"), .en("Zimbabwe")), "263")]
    }
}
