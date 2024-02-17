import Foundation

class CategoriesModel: ObservableObject {

     @Published var featuredCategories: [CategoriesStruct] =
    [
            CategoriesStruct(name: "Ностальгия по поп-музыке", image: "ностальгия", descriprion: .featuredPlaylist, secondDescription: .popular),
            CategoriesStruct(name: "Родные песни", image: "родные песни", descriprion: .featuredPlaylist, secondDescription: .russianMusic),
            CategoriesStruct(name: "Песни для детей", image: "главное дети", descriprion: .featuredPlaylist, secondDescription: .forChild),
            CategoriesStruct(name: "Золотой запас", image: "золото", descriprion: .featuredPlaylist, secondDescription: .popular),
            CategoriesStruct(name: "Поп на русском", image: "русПоп", descriprion: .featuredPlaylist, secondDescription: .popular)
    ]

    
    @Published var otherCategories: [CategoriesStruct] =
        [
            CategoriesStruct(name: "Ностальгия по русским песням", image: "русХиты", descriprion: .russianMusic, secondDescription: .none),
            CategoriesStruct(name: "Вне времени", image: "время", descriprion: .popular, secondDescription: .none),
            CategoriesStruct(name: "Песни о любви", image: "русЛюбовь", descriprion: .russianMusic, secondDescription: .none),
            CategoriesStruct(name: "Рок-танцы навсегда", image: "рок", descriprion: .alternativeMusic, secondDescription: .none),
            CategoriesStruct(name: "Хип-хоп и R&B", image: "хипХопХиты", descriprion: .hipHop, secondDescription: .none),
            CategoriesStruct(name: "Шансон главное", image: "шансон", descriprion: .rusChanson, secondDescription: .none),
            CategoriesStruct(name: "Грандиозные рэп-хиты", image: "рэпХиты", descriprion: .hipHop, secondDescription: .none),
            CategoriesStruct(name: "Танцевальная музыка", image: "русЛюбовь", descriprion: .danceMusic, secondDescription: .none)
        ]
}
