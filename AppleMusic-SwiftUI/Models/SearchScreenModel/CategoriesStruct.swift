import Foundation

struct CategoriesStruct: Identifiable {

    var id = UUID()
    var name: String
    var image: String
    var descriprion: DescriptionType?
    var secondDescription: DescriptionType?

    enum DescriptionType: String {
        case featuredPlaylist = "избранный плейлист"
        case popular = "Apple Music Поп"
        case russianMusic = "AppleMusic Хиты на русском"
        case forChild = "Apple Music Для детей"
        case alternativeMusic = "Apple Music Альтернатива"
        case hipHop = "Apple Music Хип-Хоп"
        case rusChanson = "Apple Music Русский шансон"
        case danceMusic = "Apple Music Танцевальная"
    }
}
