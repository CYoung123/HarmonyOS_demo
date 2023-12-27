export class ItemData {
  Id: number
  img: Resource;
  name: string;
  date: string;
  num: number;
  time: number;

  constructor(Id: number, img: Resource, name: string, date: string, num: number, time: number) {
    this.Id = Id
    this.img = img;
    this.name = name;
    this.date = date;
    this.num = num;
    this.time = time
  }
}

export const ItemList: ItemData[] = [
  new ItemData(1, $r('app.media.icecream'), '冰淇淋', '12月10日', 100, 10)
]