import router from '@ohos.router';
import TabBar from '../views/Components/TabBar';
let username = router.getParams()['username']
@Entry
@Component
@Preview
struct Index {
  @State message: string = 'Hello World'

  build() {
      Column() {
        TabBar()
      }
      .width('100%')
      .height('100%')
    }

}