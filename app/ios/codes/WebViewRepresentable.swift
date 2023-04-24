import SwiftUI

@MainActor struct WebViewHolder {
    let webView = WKWebView.create()
    
    func loadURLRequest(_ request: URLRequest) {
        _ = webView.loadMutableRequest(request)
    }
}

struct WebViewRepresentable: UIViewRepresentable {
    let webView: WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        webView.allowsBackForwardNavigationGestures = true
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

