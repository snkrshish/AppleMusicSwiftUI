import SwiftUI

final class HostingViewController: UIHostingController<DetailViewCategory> {

    init() {
        super.init(rootView: DetailViewCategory())
    }

    @objc
    required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
