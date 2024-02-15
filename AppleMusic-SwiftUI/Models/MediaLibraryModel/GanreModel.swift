
import Foundation

struct GanreModel: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var icon: String
    var isFavorite: Bool

    static func preview() -> [GanreModel] {
        [
            GanreModel(name: "Плейлисты", icon: "music.note.list", isFavorite: true),
            GanreModel(name: "Артисты", icon: "music.mic", isFavorite: true),
            GanreModel(name: "Альбомы", icon: "square.stack", isFavorite: true),
            GanreModel(name: "Песни", icon: "music.note", isFavorite: true),
            GanreModel(name: "Телешоу и фильмы", icon: "tv", isFavorite: true),
            GanreModel(name: "Видеоклипы", icon: "music.note.tv", isFavorite: true),
            GanreModel(name: "Жанры", icon: "guitars", isFavorite: true),
            GanreModel(name: "Сборники", icon: "person.2.crop.square.stack", isFavorite: true),
            GanreModel(name: "Авторы", icon: "music.quarternote.3", isFavorite: true),
            GanreModel(name: "Загружено", icon: "arrow.down.circle", isFavorite: true),
            GanreModel(name: "Домашняя коллекция", icon: "music.note.house", isFavorite: true)
        ]
    }
}
