//
//  HomeView.swift
//  SwiftUI Practice
//
//  Created by Kelly Douglass on 6/17/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                // Form
                
                Text("Home").font(.headline)
                Spacer()
                
                
                // Forms
                Group {
                    NavigationLink(destination: FormView()) {
                        Text("Forms")
                    }
                    Spacer()
                }

                // List View
                Group {
                    NavigationLink(destination: GenericListView()) {
                        Text("List View")
                    }
                    
                    Spacer()
                }
                
                //Tabs View
                Group {
                    
                    NavigationLink(destination: TabViews()) {
                        Text("Tabs")
                    }
                    Spacer()
                }
                
                 // Alerts and sheets
                Group {
                   
                    NavigationLink(destination: PresentationView()) {
                        Text("Alerts and sheets")
                    }
                    Spacer()
                }
                
                
                 // Drawing and animation
                Group {
                    NavigationLink(destination: DrawAnimateView()) {
                        Text("Drawing and animation")
                    }
                    Spacer()
                }
                
                Group {
                    NavigationLink(destination: EnviromentView()) {
                        Text("@Enviroment")
                    }
                    Spacer()
                    
                    NavigationLink(destination: ObserveObjectView()) {
                        Text("@ObservableObject")
                    }
                    Spacer()
                    
                    NavigationLink(destination: HorzScrollCards()) {
                                          Text("Horizontal Scroll Cards")
                                      }
                                      Spacer()
                    
                }
                
               
            }.navigationBarTitle("Home")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
