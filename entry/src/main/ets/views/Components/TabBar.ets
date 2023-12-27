
import DataPage from '../Data'
import CalendarPage from '../Calendar'
import Home from '../Home'
import Mine from '../Mine'
import Add from '../Add'
@Component
@Preview
export default struct TabBar{

  build(){
    Tabs({barPosition:BarPosition.End}){
      TabContent(){
        Home()
      }
      .tabBar(new BottomTabBarStyle($r('app.media.home'), 'Home'))

      TabContent(){
        CalendarPage()
      }
      .tabBar(new BottomTabBarStyle($r('app.media.calendar'), 'calendar'))

      TabContent(){
        DataPage()
      }
      .tabBar(new BottomTabBarStyle($r('app.media.date'), 'date'))

      TabContent(){
        Add()
      }
      .tabBar(new BottomTabBarStyle($r("app.media.add"), 'Add'))

      TabContent(){
        Mine()
      }
      .tabBar(new BottomTabBarStyle($r("app.media.mine"), 'Mine'))
    }
    .vertical(false)
    .scrollable(true)
    .barMode(BarMode.Fixed)
    .onChange((index: number) => {
      console.info(index.toString())
    })
    .width('100%')
    .backgroundColor(0xD1F3F5)
  }
}