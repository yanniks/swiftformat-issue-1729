import SwiftUI

struct MyView: View {
    @Environment(ViewModel.self) var viewModel

    var body: some View {
        @Bindable var viewModel = self.viewModel
        ZStack {
            MySubview(
                navigationPath: $viewModel.navigationPath
            )
        }
    }
}

struct MySubview: View {
    @Binding var navigationPath: NavigationPath

    var body: some View {
        EmptyView()
    }
}

@Observable
class ViewModel {
    var navigationPath: NavigationPath = .init()
}
