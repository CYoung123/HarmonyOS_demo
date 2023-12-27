@Component
@Preview
export default struct Scan{

  build(){
    Column(){
      Stack(){
        Text()
          .width(200)
          .height(200)
          .backgroundColor(Color.Pink)
          .borderRadius(100)
        Image($r('app.media.scan'))
          .width(50)
          .height(50)
          .onClick(() =>{
            console.log('扫描二维码')
          })
      }

      Text('请扫描商品条形码或二维码')
        .fontSize(20)
        .margin({top: 20})
        .fontWeight(FontWeight.Bold)
    }


  }

}