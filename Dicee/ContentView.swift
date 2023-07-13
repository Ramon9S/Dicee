//
//  ContentView.swift
//  Dicee
//
//  Created by Ramon Seoane Martin on 18/5/23.
//

import SwiftUI

struct ContentView: View {
	
	@State var leftDiceNumber = 1
	@State var rightDiceNumber = 2
	
    var body: some View {
		ZStack{
			Image("background")
				.resizable()
				.edgesIgnoringSafeArea(.all)
			VStack {
				Image("diceeLogo")
				Spacer()
				HStack {
					DiceeView(diceNumber: leftDiceNumber)
					DiceeView(diceNumber: rightDiceNumber)
				}
				.padding(.horizontal)
				Spacer()
				Button(action: {
					self.leftDiceNumber = Int.random(in: 1...6)
					self.rightDiceNumber = Int.random(in: 1...6)
				}) {
					Text("Roll")
						.font(.system(size: 50))
						.fontWeight(.heavy)
						.foregroundColor(.white)
						.padding(.horizontal)
				}
				.background(Color.red)
				.cornerRadius(10)
				Spacer()
			}
		}
    }
}

struct DiceeView: View {
	
	let diceNumber: Int
	
	var body: some View {
		Image("dice\(diceNumber)")
			.resizable()
			.aspectRatio(1, contentMode: .fit)
			.padding()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
