@Entry
@Component
struct Test4_Row_Column {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Text("我是Column")
        .fontColor(Color.Black)
      .backgroundColor(Color.Pink)
      .width("100%")
      .height("10%")
      Row({space : 20}){
        Text("我是Row1")
        Text("我是Row2")
        Text("我们能在同一水平线")
      }
      .justifyContent(FlexAlign.Start)

    }
    // 所有元素向开始方向对其
    .alignItems(HorizontalAlign.Start)
    .width("100%")
    .height("100%")






  }
}