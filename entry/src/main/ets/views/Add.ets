import Constant from '../Common/Constant'
import ProductForm from './Components/ProductForm'
import Scan from './Components/Scan'
@Component
@Preview
export default struct Add {


  build(){
    Column(){
      Scan()
      ProductForm()
        .margin({top: 20})
      Button('添加')
        .margin({top:20})
        .backgroundColor(Constant.BUTTON_COLOR)
        .width(Constant.BUTTON_WIDTH)
        .height(Constant.BUTTON_HEIGHT)
        .onClick(() => {
          console.log('添加');
        })
    }.width('100%')
  }

}