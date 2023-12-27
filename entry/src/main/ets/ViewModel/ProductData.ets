export class ProductData {
  productId: number
  productImage: Resource
  productName: string
  productDate: string
  productNum: number
  productStatus: string

  constructor(productId: number, productImage: Resource,productName: string, productDate: string, productNum: number, productStatus: string) {
            this.productId = productId,
            this.productImage = productImage,
            this.productName = productName,
            this.productDate = productDate,
            this.productNum = productNum,
            this.productStatus = productStatus
  }

}

export const productList: ProductData[] = [
  new ProductData(1,$r('app.media.avocado'),'牛油果','12月11日',10,'过期')
]

export const productList1: ProductData[] = [
  new ProductData(1,$r('app.media.avocado'),'牛油果','12月11日',10,'2天')
]