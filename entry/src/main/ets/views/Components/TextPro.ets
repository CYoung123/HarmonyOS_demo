@Component
export default struct TextPro{
  private inputImage?: Resource
  private hinText?: string

  build() {
    Row(){
      Image(this.inputImage != undefined ? this.inputImage : '')
        .width(40)
        .height(40)
        .margin({left: 12})

      TextInput({placeholder: this.hinText})
        .fontSize(16)
        .padding({left: 16})
        .placeholderColor('#99000000')
        .backgroundColor(Color.White)
        .fontStyle(FontStyle.Normal)
        .fontColor(Color.Black)
        .fontWeight(FontWeight.Normal)
        .margin({right: 32})
        .height(40)
        .layoutWeight(1)
    }
    .margin({top:24})
    .borderRadius(24)
    .backgroundColor(Color.White)
    .width('94%')
    .height(64)

  }





}