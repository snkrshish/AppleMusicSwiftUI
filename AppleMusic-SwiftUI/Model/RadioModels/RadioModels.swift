import Foundation

struct RadioModels: Identifiable {
    var id = UUID()
    var name: String
    var destination: String
    var secondDestination: String?
    var image: String

    static func previewFirstCollection() -> [RadioModels] {
        [
            RadioModels(name: "Коллекция Hip-Hop", destination: "эксклюзив", image: "Hip-Hop"),
            RadioModels(name: "Русское радио", destination: "утреннее шоу", image: "RusRadio"),
            RadioModels(name: "Любовная волна", destination: "любим музыку", secondDestination: "новинка", image: "LoveRadio"),
            RadioModels(name: "Заряд бодрости", destination: "музыка для танцев", secondDestination: "современные хиты", image: "RadioRecord")
        ]
    }

    static func previewSecondCollection() -> [RadioModels] {
        [
            RadioModels(name: "Музыка для учебы", destination: "Не отвлекайтесь", image: "Музыка для учебы"),
            RadioModels(name: "Зарубежные хиты", destination: "То, что слушают прямо сейччас", image: "Зарубежные Хиты"),
            RadioModels(name: "Музыка для концентрации", destination: "Электронная медитация", image: "Музыка для медитации"),
            RadioModels(name: "Музыка для тренировки", destination: "Музыка для прилива сил", image: "Музыка для тренировки")
        ]
    }
}



