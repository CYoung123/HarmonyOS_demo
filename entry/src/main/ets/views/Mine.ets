import router from '@ohos.router'
import Constant from '../Common/Constant'
import TextPlus from './Components/TextPlus'
import TextPro from './Components/TextPro'
@Component
@Preview
export default struct Mine {
  @State msg: string = ''
  @State sex: string[] = ['男', '女']

  build(){
    Column() {
      Image($r('app.media.mineHead'))
        .width(100)
        .height(100)
        .alignSelf(ItemAlign.Center)

      Text('个人信息')
        .fontSize(16)
        .fontColor(Constant.LOGIN_COLOR)
        .margin({top: 10})
        .alignSelf(ItemAlign.Center)

      TextPro({
          inputImage: $r('app.media.hinMIne'),
          hinText: '昵称'
      })

      TextPro({
        inputImage: $r('app.media.favourite'),
        hinText: '个性签名'
      })

      TextPlus({
        inputImage: $r('app.media.favourite'),
        hinText: '性别',
        content: this.msg,
        onItemClick: () => {
          TextPickerDialog.show({
            range: this.sex,
            onAccept: (value: TextPickerDialog) => {
              this.msg = value as string
              console.log('msg:  ' + this.msg)
            },
            onCancel: () => {
              console.info('取消')
            },
            onChange: (value: TextPickerDialog) => {
              console.info('更改')
            }

          })

        }

      })
      Column(){
        Image($r('app.media.logout'))
          .width(50)
          .height(50)
          .margin({top: 20})
        Text('登出')
          .fontColor(Constant.LOGIN_COLOR)
          .margin({top: 10})

      }
      .onClick(() => {
        router.pushUrl({
          url: 'pages/Login'
        })
      })

    }


  }


}