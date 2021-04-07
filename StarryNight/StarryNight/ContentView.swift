//
//  ContentView.swift
//  StarryNight
//
//  Created by Ronald Jabouin on 4/4/21.
//

/*
 
 https://www.eurekacamping.com/blog/article/5-constellations-everyone-can-find
 https://www.artofmanliness.com/articles/15-constellations-every-man-should-know/
 - Little Dipper (3)
 - Taurus (3)
 - Gemini (3)
 - Aquila (3)
 - Leo (3)
 */



import SwiftUI
import PencilKit


struct Writer: View {
    @Environment(\.undoManager) private var undoManager
    @State private var canvasView = PKCanvasView()

    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                
                //Undo Button
                Button{
                    undoManager?.undo()
                } label: {
                    ButtonStyle(title: "Undo")
                }
                
                //Redo Button
                Button{
                    undoManager?.redo()
                } label: {
                    ButtonStyle(title: "Redo")
                }
                
                //Clear Button
                Button{
                    canvasView.drawing = PKDrawing()
                } label: {
                    ButtonStyle(title: "Clear")
                }
            
              //  .padding(.bottom, 30)
            }
            
            //Drawing View
            CanvasView(canvasView: $canvasView)
            
            //Classify Button
            Button{
                
                            } label: {
                ButtonStyle2(title: "Classify")
            }
            
        }
    }
    
    
}

struct CanvasView: UIViewRepresentable {
    @Binding var canvasView: PKCanvasView

    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 15)
        return canvasView
    }

    func updateUIView(_ canvasView: PKCanvasView, context: Context) { }
}
