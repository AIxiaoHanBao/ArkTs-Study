import {Test1} from "./test1"


@Entry
@Component
struct Test3_ForEach {
  @State message: string = 'Hello World'
  @State listDate : Array<string> = ['1','2','3']

  build() {
    Column() {
      Column() {
        Button("载入")
          .width("180vp")
          .height("40vp")
          .offset({ x: "0vp", y: "-276.27vp" })
        Image("http://118.24.87.123:9000/imgadmin/03cb4119755f4f439d3113f2409246e8.png")
          .height("30%")
        Button("测试",{type : ButtonType.Normal})
        Text(this.message)
        TextInput({placeholder:"名称"})
          .width('90%')
          .maxLength(11)
          .type(InputType.PhoneNumber)
          .onChange((value : string)=>{
            this.message= value
          })
        TextInput({ placeholder: '请输入密码' })
          .width('90%')
          .type(InputType.Password)
          .margin({top : 10})
        Text(this.listDate.toString())
        LoadingProgress()
        .visibility( true ? Visibility.Visible:Visibility.Visible)
          .enabled(false)
          .color(Color.Blue)
          .height(60)
          .width(60)

        ForEach(this.listDate,
          (item : string)=>{
            Text(item)
          },(item: string) => item
        )
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)


    }
    .width("100%")
    .height("100%")
  }
}