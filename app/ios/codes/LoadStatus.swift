enum LoadStatus {
    case none
    case loading
    case loadSuccess
    case loadFailed
}

private struct LoadStatusModifier: ViewModifier {
    let loadStatus: LoadStatus
    let retry: () -> Void
    
    func body(content: Content) -> some View {
        switch loadStatus {
        case .none: EmptyView()
        case .loading:
            content
                .opacity(0.0)
                .overlay(
                    ProgressView()
                        .progressViewStyle(.circular)
                )
        case .loadFailed:
            ReloadableFailView(retry: retry)
        case .loadSuccess:
            content
        }
    }
}

extension View {
    func loadStatus(loadStatus: LoadStatus, retry: @escaping () -> Void) -> some View {
        modifier(LoadStatusModifier(loadStatus: loadStatus, retry: retry))
    }
}

