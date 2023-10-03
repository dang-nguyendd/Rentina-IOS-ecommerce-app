/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 3
 Nguyen Dinh Dang Nguyen (s3759957) – Project Manager
 Bui Minh Nhat (s3878174) – Technology Leader
 Nguyen Thanh Luan (s3757937) – Member
 Nguyen Phuoc Nhu Phuc (s3819660) – Member
 Created  date: 03/09/2022
 Last modified: 17/09/2022
 Acknowledgement: Acknowledge the resources that you use here.
 Tom's Huynh Lecture
 https://github.com/onevcat/Kingfisher
 https://developer.apple.com/documentation/coreml
 https://arxiv.org/abs/1801.04381
 https://firebase.google.com/docs/ios/setup
 */
import SwiftUI

struct SearchView: View {
    @Binding var currentView: ScreenView
    let viewName = "search"
    var body: some View {
        ZStack{
            Color(viewName).opacity(0.7)
            Text("Search View")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(currentView: .constant(.search))
    }
}
