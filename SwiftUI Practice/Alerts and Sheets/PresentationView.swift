//
//  PresentationView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct PresentationView: View {
    
    @State private var showAlert = false
    @State private var showSheet = false
    @State private var showFullSheet = false
    
    var actionSheet: ActionSheet {
        ActionSheet(
            title: Text("What do you want to do?"),
            message: Text("Choice One"),
            buttons:[
                .default(Text("Save")),
                .default(Text("Delete")),
                .default(Text("Dismiss Action Sheet"
                ))
        ])
    }
    
    var body: some View {
        
        
        VStack {
            
            Spacer()
            
            // MARK: - Alert example
            
            Button(action: {
                self.showAlert = true
            }){
                Text("Alert")
            }.alert(isPresented: $showAlert) {
                Alert(title: Text("Alert Title"), message: Text("Alert Message"), dismissButton: .default(Text("Dismiss")))
            }
            
            Spacer()
            
            // MARK: - Action Sheet example
            
            Button(action: {
                self.showSheet = true
            }) {
                Text("Show Action Sheet")
            }.actionSheet(isPresented: $showSheet, content : {
                self.actionSheet
            })
            
            Spacer()
            
            
            // MARK: - Sheet full page example
            
            Button(action: {
                self.showFullSheet.toggle()
            }) {
                Text("Show Full Sheet")
            }
            .sheet(isPresented: $showFullSheet) {
                FullSheetModal()
            }
            Spacer()
            
        }
    }
    
}
struct PresentationView_Previews: PreviewProvider {
    static var previews: some View {
        PresentationView()
    }
}
