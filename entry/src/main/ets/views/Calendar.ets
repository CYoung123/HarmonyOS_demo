import Constant from '../Common/Constant'
import { ProductData, productList, productList1 } from '../ViewModel/ProductData'
import CalendarItem from './Components/CalendarItem'
import ProductList from './Components/ProductList'
@Component
@Preview
export default struct CalendarPage{
  @State data: ProductData[] = productList1

  build(){
    Column(){
      Column(){
        CalendarItem()
      }
      .height('40%')
      Column({space: 30}){
        Text('即将过期的产品')
          .fontSize(Constant.LOGIN_SIZE)
          .fontColor(Constant.LOGIN_COLOR)
          .fontWeight(FontWeight.Bold)
       List({space: 20,initialIndex: 0}){
          ForEach(this.data,(item: ProductData) => {
            ListItem(){
              Row({space: 10}){
                Column(){
                  Image(item?.productImage)
                    .width(50)
                    .height(50)
                }
                .backgroundColor('#F1F5F9')
                .borderRadius(50)

                Column(){
                  Text(item?.productName)
                    .fontWeight(FontWeight.Bold)
                    .fontSize(20)

                  Text('购买日期:' + item?.productDate + '|' + "数量：" + item?.productNum)
                    .fontSize(14)
                }

                Column(){
                  Text('还剩'+ item?.productStatus)
                    .width(60)
                    .height(20)
                    .fontSize(15)
                    .fontColor(Color.Black)
                    .margin({left: 10})
                }
              }
            }
          }, item => item)

       }
        .listDirection(Axis.Vertical)
        .edgeEffect(EdgeEffect.Spring)
        .onReachEnd(() => {
          console.log('滑到了底部')
        })
        .width('90%')

      }
      .height('60%')
    }

  }

}