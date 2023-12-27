@Component
@Preview
export default struct CalendarItem{
  @State head: string = '2023年12月23日'
  @State week: string[] = ['日', '一', '二', '三', '四', '五', '六']
  @State currentDay: number = 0
  @State currentMonth: number = 0
  @State currentYear: number = 2000
  @State allDay: number[] = []
  @State currentFirstWeekDay: number = 1
  @State preMonth: number[] = []

  getPrevMonthDay(){
    let date = new Date(this.currentYear,this.currentMonth-1.0)
    let day = date.getDate()
    let days = this.currentFirstWeekDay
    let week = []
    while (days > 0){
      week.push({
        year: date.getFullYear(),
        month: date.getMonth() + 1,
        day:days--
      })
      days--
    }
    return week.sort((a,b) => a.day - b.day)
  }

  aboutToAppear(){
    let date = new Date()
    this.currentDay = date.getDate()
    this.currentMonth = date.getMonth() + 1
    this.currentYear = date.getFullYear()
    this.currentFirstWeekDay = new Date(date.getFullYear(),date.getMonth(),1).getDay()
    let num = new Date(this.currentYear,this.currentMonth,0).getDate()
    for(let i = 0; i < num; i++){
        this.allDay[i] = i
    }
    this.preMonth = this.getPrevMonthDay()
  }

  @Builder Head(value: string){
    Row(){
      Image($r('app.media.arrowLeft'))
        .width(20)
        .height(20)
        .onClick(() => {
          console.log('上月')
        })
      Text(this.currentYear + '年' + (this.currentMonth) + '月' + this.currentDay + '日')
        .fontWeight(FontWeight.Bold)
        .padding(10)

      Image($r('app.media.arrowRight'))
        .width(20)
        .height(20)
        .onClick(() => {
          console.log('下月')
        })
    }
    .margin({top: 10})
  }

  @Builder Week(value: string[]){
      Column(){
        Grid(){
          ForEach(value,(data: string) => {
            GridItem() {
              Text(data)
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .height('100%')
                .textAlign(TextAlign.Center)
            }
          })
        }
        .columnsTemplate('1fr 1fr 1fr 1fr 1fr 1fr 1fr')
        .columnsGap(10)
        .rowsGap(10)
        .width('90%')
        .height(50)
      }
    .width('100%')
    .margin({bottom:10})
  }

  @Builder Day(){
    Grid(){
      ForEach(this.preMonth,(i) => {
        GridItem(){
          Text(String(i['day']))
            .fontSize(16)
            .textAlign(TextAlign.Center)
            .backgroundColor(Color.Gray)
        }
      })

      ForEach(this.allDay,(i) => {
        GridItem(){
          Text(String(i + 1))
            .fontSize(16)
            .textAlign((TextAlign.Center))
        }
      })
    }
    .columnsGap(10)
    .rowsGap(10)
    .columnsTemplate('1fr 1fr 1fr 1fr 1fr 1fr 1fr')
    .width('90%')
  }

  build(){
    Column(){
      this.Head(this.head)
      this.Week(this.week)
      this.Day()

    }

  }


}