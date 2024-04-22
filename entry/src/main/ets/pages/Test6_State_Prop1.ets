import { Test6_State_Prop2 } from './Test6_State_Prop2'


@Component
@Entry
struct Test6_State_Prop1 {
  @State message: string = 'Hello World'



  build() {
    Column() {
      Column() {
        Test6_State_Prop2({
          lableString : this.message,
          textEnable : true,
        }
        )
        Text(`${this.message}`)
          .width("300vp")
          .height("60vp")
          .textAlign(TextAlign.Center)
          .fontSize("50fp")
          .fontWeight(FontWeight.Bold)
        Button("父组件点击修改")
          .onClick(()=>{
            this.message="我修改了"
          })
          .width("180vp")
          .height("80vp")
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height("100%")
  }
}
