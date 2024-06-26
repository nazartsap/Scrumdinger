import Foundation
import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(scrum.title)
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                Spacer()
                HStack{
                    Label("\(scrum.attendees.count)", systemImage: "person.3")
                        .accessibilityLabel("\(scrum.attendees.count) attendees")
                    Spacer()
                    Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                        .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                        .labelStyle(.trailingIcon)
                }
                .font(.caption)
            }
            .padding()
            .foregroundColor(scrum.theme.accentColor)
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
