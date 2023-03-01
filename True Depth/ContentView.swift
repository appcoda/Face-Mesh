//
//  ContentView.swift
//  FaceMesh
//
//  Created by jht2 on 3/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BridgeView()
        }
        .padding()
    }
}

struct BridgeView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        print("BridgeView makeUIViewController")
        
        let storyBoard: UIStoryboard = UIStoryboard(name:"Main", bundle:nil);
        let viewCtl = storyBoard.instantiateViewController(withIdentifier: "main");
        
        print("BridgeView viewCtl", viewCtl)

        return viewCtl
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        print("BridgeView updateUIViewController")
    }
    
    func makeCoordinator() -> Coordinator {
        print("BridgeView makeCoordinator")
        return Coordinator(self)
    }
    
    class Coordinator: NSObject {
        private let parent: BridgeView

        init(_ parent: BridgeView) {
            self.parent = parent
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
