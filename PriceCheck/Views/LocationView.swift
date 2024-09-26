import SwiftUI

struct LocationView: View {
    var location: Location
    
    var body: some View {
        Section(header: Text(location.name)) {
            ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
                ScanView(scan: scan)  // Use ScanView for each scan
            }
        }
    }
}
