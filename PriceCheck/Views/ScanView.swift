import SwiftUI

struct ScanView: View {
    var scan: PriceScan
    
    var body: some View {
        HStack {
            Text(scan.item)  // Display the item name on the left
            Spacer()  // push the price to the right
            Text(Helper.asCurrency(Double(scan.price)))  // Display the price
                .bold()
        }
    }
}
