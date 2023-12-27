@Component
@Preview
export default struct DataPan {

  build(){
    Column({space: 5}){
      Row(){
        Text('冰箱容量')
        Stack(){
          DataPanel({values: [50,12,8,5],max: 100,type: DataPanelType.Circle })
            .width(168).height(168)
          Column(){
            Text('75').fontSize(35).fontColor('#182431')
          }
          Text('%')
            .fontSize(10)
            .lineHeight(13)
            .fontWeight(500)
            .opacity(0.6)
            .position({ x: 104.42, y: 78.17 })

        }

      }
      .margin({bottom:50})
      JustifyContentFlex({justifyContent:FlexAlign.SpaceEvenly})
    }.width('100%').margin({top: 5})
  }

}



@Component
struct JustifyContentFlex {
  justifyContent: number = 0

  build(){
    Flex({justifyContent:this.justifyContent}){
      Text('蔬菜').width('20%').height(50).backgroundColor('#f8a70d').textAlign(TextAlign.Center).borderRadius(50)
      Text('饮料').width('20%').height(50).backgroundColor('#f1420b').textAlign(TextAlign.Center).borderRadius(50)
      Text('水果').width('20%').height(50).backgroundColor('#e55394').textAlign(TextAlign.Center).borderRadius(50)
      Text('肉类').width('20%').height(50).backgroundColor('#a22df7').textAlign(TextAlign.Center).borderRadius(50)

    }
    .width('90%')
    .padding(10)

  }
}
