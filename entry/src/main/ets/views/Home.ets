
import Constant from '../Common/Constant'
import ProductList from './Components/ProductList'
import SearchItem from './Components/Search'
@Component
@Preview
export default struct Home {
  @State isRefreshing: boolean = false

  build() {
      Column() {
        SearchItem()
        Refresh({refreshing: $$this.isRefreshing,offset:10,friction:50}){
          Text('全部商品列表')
            .fontColor(Constant.LOGIN_COLOR)
            .fontSize(Constant.LOGIN_SIZE)
            .fontWeight(FontWeight.Bold)
        }
        .onStateChange((refreshStatus: RefreshStatus) => {
          console.log('刷新状态变更')
        })
        .onRefreshing(() => {
          setTimeout(() => {
            this.isRefreshing = false
          },1000)
        })

        ProductList()
      }
      .backgroundColor(0xDCDCDC)
      .padding({top: 5})
      .width('100%')
       .height('100%')

  }
}