import data from '@ohos.telephony.data'
import { ItemData, ItemList } from '../ViewModel/ItemData'
import DataItem from './Components/DataItem'
import DataPan from './Components/DataPan'
@Component
@Preview
export default struct DataPage{
  @State data: ItemData[] = ItemList
  private arr: number[] = [0,1]

  build() {
    Column() {
      DataPan()

      List({ space: 10, initialIndex: 0 }) {
        ForEach(this.arr, (item) => {
          ListItem() {
          Column({space: 10}){
            Text('食品').margin({top: 10}).fontWeight(FontWeight.Bold).fontColor(Color.Black).fontColor(20)
            Text('剩余产品数量: 100')
            Divider().margin(10).strokeWidth(2)
            List({space: 10,initialIndex: 0}){
              ForEach(this.data,(item: ItemData) => {
                ListItem(){
                  DataItem({
                    img: item.img,
                    num: item.num,
                    name: item.name,
                    date: item.date,
                    time: item.time
                  })
                }
              },item => item)
              ForEach(this.data,(item: ItemData) => {
                ListItem(){
                  DataItem({
                    img: item.img,
                    num: item.num,
                    name: item.name,
                    date: item.date,
                    time: item.time
                  })
                }
              },item => item)
              ForEach(this.data,(item: ItemData) => {
                ListItem(){
                  DataItem({
                    img: item.img,
                    num: item.num,
                    name: item.name,
                    date: item.date,
                    time: item.time
                  })
                }
              },item => item)
            }
            .listDirection(Axis.Horizontal)
            .edgeEffect(EdgeEffect.Spring)
            .onScrollIndex((firstIndex: number, lastIndex: number) => {
            })
          }
          }
        }, item => item)

      }
      .listDirection(Axis.Vertical)
      .edgeEffect(EdgeEffect.Spring)
      .onScrollIndex((firstIndex: number, lastIndex: number) => {
      })
      .width('90%')
    }.width('100%').margin({ top: 5 }).height('100%').backgroundColor(0xDCDCDC)


  }


}