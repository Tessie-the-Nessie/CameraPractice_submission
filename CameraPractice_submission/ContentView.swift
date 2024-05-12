//
//  ContentView.swift
//  CameraPractice_submission
//
//  Created by Tessa Delsener on 5/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var isImagePickerShowing = false
    @State var selectedImage: UIImage?
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    var body: some View {
        VStack {
            Image(uiImage: selectedImage ?? UIImage(named: "happyCamera")!)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .imageScale(.large)
                .foregroundStyle(.tint)
            HStack {
                
                Button("Select a Photo") {
                    self.sourceType = .photoLibrary
                    isImagePickerShowing = true
                }
                
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
           
        }
        .sheet(isPresented: $isImagePickerShowing) {
                    ImagePicker(selectedImage: $selectedImage, isImagePickerShowing: $isImagePickerShowing, sourceType: self.sourceType)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}

