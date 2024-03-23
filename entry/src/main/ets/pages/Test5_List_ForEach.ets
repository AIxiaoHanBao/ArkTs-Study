import ItemData from '../common/entity/ItemData'
import { Test } from '../common/entity/TestController'
@Entry
@Component
struct Test5_List_ForEach {
  @State message: string = 'Hello World'
  @Builder settingCell(item : ItemData){
    Row(){
      Row({space:12}){
        Image(item.img)
          .height("10%")
        Text(item.title)
      }
      if (item.others === null){
        Text("后面的图标")
      }else {
        Toggle({type : ToggleType.Switch,isOn:false})
      }
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .shadow({radius : 10,offsetX : 1,offsetY:1})
    .width("100%")
    .borderRadius(15)
    .backgroundColor(Color.White)
  }
  build() {
    Column() {
      List({space:10}){
        ForEach(
          Test.getData(),
          (item : ItemData)=>{
            ListItem(){
              this.settingCell(item)
            }
          },item => JSON.stringify(item)
        )
      }
      .margin({top:50})
      .listDirection(Axis.Vertical)
      .divider({strokeWidth : 1})
      .height('90%')
      .width("100%")
      .border({width : 2,color : Color.Blue})
    }
    .width("100%")
    .height("100%")
    .backgroundColor(Color.Pink)

  }
}

