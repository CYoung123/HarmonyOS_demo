import Constant from '../../Common/Constant'
@Component
export default struct SearchItem{
  @State search: string = ''

  build() {
        Row(){
          TextInput({ text: this.search, placeholder: 'Search' })
            .placeholderColor(Color.Gray)
            .placeholderFont({ size: 14, weight: 400 })
            .caretColor(Color.Blue)
            .width(250)
            .height(40)
            .margin({ top: 20, left: 10, right: 10 })
            .fontColor(Color.Black)
            .fontSize(14)
            .onChange((value: string) => {
              this.search = value
            })

          Button('搜索')
            .margin({top: 20})
            .fontSize(14)
            .width(60)
            .height(40)
            .fontWeight(400)
            .backgroundColor(Constant.BUTTON_COLOR)
            .onClick(() => {
              console.log('搜索' + this.search)
            })
        }

  }



}