@Component
@Preview
export default struct TextPlus{
  private inputImage?: Resource
  private hinText?: string
  private content?: string

  onItemClick = () => {

  };
  build(){
    Row(){
      Image(this.inputImage != undefined ? this.inputImage : '')
        .width(40)
        .height(40)
        .margin({left: 12})
      Text(this.hinText)
        .fontSize(16)
        .margin({left:12})
        .height('100%')
      Text(this.content)
        .fontSize(16)
        .textAlign(TextAlign.End)
        .maxLines(1)
        .textOverflow({overflow: TextOverflow.Ellipsis})
        .margin({
          left: 16,
          right: 7
        })
        .layoutWeight(1)
        .width('100%')

      Image($r('app.media.arrowRight'))
        .width(14)
        .height(24)
        .margin({right: 14})

    }
    .backgroundColor(Color.White)
    .margin({top: 12})
    .borderRadius(24)
    .width('94%')
    .height(64)
    .onClick(this.onItemClick)


  }


}