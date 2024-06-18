import Foundation
import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(scrum.title)
                    .font(.headline)
                Spacer()
                HStack{
                    Label("\(scrum.attendees.count)", systemImage: "person.3")
                    Spacer()
                    Label("\(scrum.lengthInMinutes)", systemImage: "circle")
                }
            }
        }
    }
    struct CardView_Previews: PreviewProvider {
        static var scrum = DailyScrum.sampleData[0]
        static var previews: some View {
            CardView(scrum:scrum)
                .background(scrum.theme.mainColor)
                .previewLayout(.fixed(width: 500, height: 60))
        }
    }
}
