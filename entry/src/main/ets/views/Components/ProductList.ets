import { ProductData, productList } from '../../ViewModel/ProductData'
@Component
export default struct ProductList{

  @State data: ProductData[] = productList

  build(){
    List({space: 20,initialIndex: 0}){
      ForEach(this.data,(item: ProductData) => {
        ListItem() {
          Row({space: 20}){
            Column(){
              Image(item?.productImage)
                .width(50)
                .height(50)
            }
            .backgroundColor('#F1F5F9')
            .borderRadius(50)

            Column(){
              Text(item?.productName)
                .fontSize(20)
                .fontWeight(FontWeight.Bold)
              Text('购买日期：' + item?.productDate + '|' + '数量：' + item?.productNum )
                .fontSize(14)
            }

            Column(){
              Button(item?.productStatus)
                .width(50)
                .height(20)
                .fontSize(9)
                .fontColor(Color.Black)
                .margin({left: 10})
                .backgroundColor('#FFB1B0')
            }

          }
        }
      },item => item)
    }
    .margin({top: 20,bottom: 30})
    .listDirection(Axis.Vertical)
    .edgeEffect(EdgeEffect.Spring)
    .onReachEnd(() => {
      console.log('滑到底部加载操作')
    })
    .width('90%')
  }

}