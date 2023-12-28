@Component
@Preview
export default struct ProductForm{
  @State data: string = ''
  @State time: string = ''
  build(){
    Column(){
      Text('商品名称')
        .textStyle()
      TextInput({placeholder: "请输入商品名称"})
        .inputStyle()
      Text('生产日期')
        .textStyle()
      TextInput({placeholder: "请输入生产日期",text:this.data})
        .inputStyle()
        .onClick(() => {
          DatePickerDialog.show({
            start: new Date("2000-1-1"),
            end: new Date("2100-12-31"),
            onAccept:(value: DatePickerResult) => {
              this.data = value.year + '年' + (value.month + 1) + '月' + value.day + '日'
            },
            onCancel: () => {

            },
            onChange: (value: DatePickerResult) => {

            }
          })

        })
      Text('到期日期')
        .textStyle()
      TextInput({placeholder: "请输入到期日期",text: this.time})
        .inputStyle()
        .onClick(() => {
          DatePickerDialog.show({
            start: new Date('2000-1-1'),
            end: new Date('2100-12-31'),
            onAccept: (value: DatePickerResult) =>{
              this.time = `${value.year}年${value.month+1}月${value.day}日`
            },
            onCancel: () => {
              console.log("取消")
          },
            onChange: (value: DatePickerResult) =>{

            }
          })

        })
    }
    .alignItems(HorizontalAlign.Start)
    .margin({top: 15})
    .width('100%')

  }


}

@Extend(Text) function textStyle(){
    .fontSize(20)
  .margin({left:20})
}

@Extend(TextInput) function inputStyle(){
  .width(400)
  .height(50)
  .margin(20)
  .borderRadius(50)
  .style(TextInputStyle.Inline)
}