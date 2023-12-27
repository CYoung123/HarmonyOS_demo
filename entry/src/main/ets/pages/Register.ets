import router from '@ohos.router';
import Constant from '../Common/Constant'
@Entry
@Component
@Preview
struct Register{
  @State message: string = 'Please Register'
  @State username: string = ''
  @State password: string = ''
  @State email: string = ''

  build(){
    Row(){
      Column(){
        Text(this.message)
          .fontColor(Constant.LOGIN_COLOR)
          .fontSize(Constant.LOGIN_SIZE)
          .fontWeight(FontWeight.Bold)
        TextInput({placeholder: 'Username'})
          .width(Constant.INPUT_WIDTH)
          .height(Constant.INPUT_HEIGTH)
          .margin({top: 20})
          .onChange((value: string) => {
            this.username = value
          })
        TextInput({placeholder: 'Email'})
          .margin({top: 20})
          .width(Constant.INPUT_WIDTH)
          .height(Constant.INPUT_HEIGTH)
          .onChange((value: string) => {
            this.email = value
          })
        TextInput({placeholder: 'Password'})
          .margin({top: 20})
          .width(Constant.INPUT_WIDTH)
          .height(Constant.INPUT_HEIGTH)
          .onChange((value: string) => {
            this.password = value
          })
        Button('Register')
          .width(Constant.BUTTON_WIDTH)
          .height(Constant.BUTTON_HEIGHT)
          .margin({top: 30})
          .backgroundColor(Constant.BUTTON_COLOR)
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Login',
              params: {
                username: this.username,
                email: this.email,
                password: this.password
              }
            })
          })

      }
      .width('100%')
    }
    .height('100%')
  }



}