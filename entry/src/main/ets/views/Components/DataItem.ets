@Component
export default struct DataItem {
  private img?: Resource
  private time?: number
  private date?: string
  private num?: number
  private name?: string

  build(){
    Row({space: 10}){
      Image(this.img)
        .width(50)
        .height(50)
        .backgroundColor(Color.White)
        .borderRadius(50)
      Column({space: 10}){
        Text(this.name)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
        Text('数量:' +  this.num)
          .fontSize(12)
        Text('购买时间:' + this.date)
          .fontSize(12)
        Text('还剩' + this.time + '天到期')
          .fontSize(12)
      }.alignItems(HorizontalAlign.Start)
    }.width('50%')

  }

}