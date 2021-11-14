//
//  ContentView.swift
//  AlarmSwiftUI
//
//  Created by Lola M on 11/14/21.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                ForEach(Alarm.rows) { row in
                    HStack {
                        Text(Alarm.rows[0].time)
                        Text(row.ampm ? "AM" : "PM")
                            .font(.system(size: 10))
                        Toggle(isOn: .constant(row.AlarmOn)) {
                            
                        }
                    }
                }
            }
            .navigationTitle("Alarm")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Edit") {
                        print("Edit tapped!")
                        //Call Button Components.
                    }
                }
                ToolbarItem(placement: .navigationBarLeading, content: {
                    Button("Add New") {
                        print("Add New tapped!")
                        //Call Button Components.
                    }
                }
                )}
        }
    }
}
    
    //Move to Another file
    struct Alarm: Identifiable {
        
        var id = UUID().uuidString
        var time: String
        var ampm: Bool
        var AlarmOn: Bool
        
        static let rows = [
            Alarm(time: "1:30", ampm: false, AlarmOn: true),
            Alarm(time: "2:00", ampm: true, AlarmOn: false),
            Alarm(time: "3:30", ampm: false, AlarmOn: true),
            Alarm(time: "4:30", ampm: true, AlarmOn: false)
        ]
        
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
            //Dont forget to call Alarm screen.
        }
    }
