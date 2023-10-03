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
 https://adnan-tech.com/pick-image-from-gallery-and-upload-to-server-swiftui-and-php/
 */

import FirebaseStorage
import SwiftUI
import Foundation


class EditProductViewModel: ObservableObject {
    
    @Published var product: Item = Item()
    @Published var isExpireTypeTap: Bool = false
    @Published var isCategoryTap: Bool = false
    @Published var showActionSheet: Bool = false
    @Published var showImagePicker = false
    @Published var itemTag: String = ""
    @Published var forwards: Bool = false
    @Published var imageIndex: Int = 0
    @Published var pricePerDayString: String = ""
    
    @ObservedObject private var dataManager: DataManager = DataManager.commonDataManager
    
    func initProduct(item: Item){
        self.product = item;
    }
    
    func editProduct(){
        dataManager.updateItem(self.product)
    }
    
}