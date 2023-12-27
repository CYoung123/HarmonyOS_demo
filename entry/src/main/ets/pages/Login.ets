import router from '@ohos.router'
import Constant from '../Common/Constant'
@Entry
@Preview
@Component
struct Login {
  @State message: string = 'Please Login'
  @State username: string = ''
  @State password: string = ''

  build(){
    Row(){
      Column() {
        Text(this.message)
          .fontColor(Constant.LOGIN_COLOR)
          .fontSize(Constant.LOGIN_SIZE)
          .fontWeight(FontWeight.Bold)

        TextInput({placeholder: 'Username'})
          .margin({ top: 20 })
          .width(Constant.INPUT_WIDTH)
          .height(Constant.INPUT_HEIGTH)
          .onChange((value: string) => {
            this.username = value;
          })

        TextInput({placeholder: 'Password'}).type(InputType.Password)
          .margin({top: 20})
          .width(Constant.INPUT_WIDTH)
          .height(Constant.BUTTON_HEIGHT)
          .onChange((value: string) => {
            this.password = value;
          })

        Button('Login in ')
          .width(Constant.BUTTON_WIDTH)
          .height(Constant.BUTTON_HEIGHT)
          .margin({top: 30})
          .backgroundColor(Constant.BUTTON_COLOR)
          .onClick(() =>{
            router.pushUrl({
              url: 'pages/Index',
              params:{
                username: this.username,
                password: this.password
            }
            })
          })
        Flex(){
          Text('Dont have an account yet? ')
          Text('To Register')
            .fontColor(Constant.BUTTON_COLOR)
            .onClick(() => {
              router.pushUrl({
                url: 'pages/Register'
              })
            })
        }
        .margin(30)
      }
      .width('100%')
    }
    .height('100%')

  }


}