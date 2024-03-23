import router from '@ohos.router'
@Entry
@Component
struct Test2 {

  build() {
    Column() {
      Column() {
        Button("返回!!!")
          .width("180vp")
          .height("80vp")
          .onClick(() =>{
            router.back()
          })
      }      
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }    
    .width("100%")
    .height("100%")
  }
}