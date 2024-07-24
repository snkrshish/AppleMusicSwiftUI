import SwiftUI

struct FeaturedPlaylist: View {
    @ObservedObject var featuredModel = CategoriesModel()

    let rowsFeatured = [
        GridItem(.fixed(300),spacing: 30),
        GridItem(.fixed(300),spacing: 30)
    ]

    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Text("Плейлисты")
                    .font(.title)
                    .bold()
                    .padding(.leading)
                Image(systemName: "chevron.right")
                    .bold()
            }
            .frame(height: 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rowsFeatured,spacing: 30) {
                    ForEach(featuredModel.otherCategories) { model in

                        VStack(alignment: .leading) {
                            
                            Divider()

                            Image(model.image)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .frame(width: 270, height: 270)
                            Text(model.name)
                                .font(.system(size: 18))


                            Text(model.descriprion!.rawValue)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                    }
                }
                .padding()
            }
            Spacer()
        }
    }
}

struct CategoryDetailHorizontalView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedPlaylist()
    }
}
