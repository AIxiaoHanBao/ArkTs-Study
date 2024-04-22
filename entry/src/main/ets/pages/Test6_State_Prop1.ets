import PeopleData from '../common/entity/peopleVo';
import { Test6_State_Prop2 } from './Test6_State_Prop2'
import { YellowButton } from './Yellow_Button';


@Component
@Entry
struct Test6_State_Prop1 {
  @State message: string = 'Hello World';
  @State year : PeopleData = new PeopleData("123","456",true);
  @State yellowButtonProp: number = 180;



  build() {
    Column() {
      Column() {
        Test6_State_Prop2({
          lableString : this.message,
          textEnable : true,
          // year : $year
        }
        )
        Text(`${this.message}`)
        Text(`${this.year.name}`)
          .width("300vp")
          .height("60vp")
          .textAlign(TextAlign.Center)
          .fontSize("50fp")
          .fontWeight(FontWeight.Bold)
        YellowButton({yellowButtonState : $yellowButtonProp})

        Button("父组件点击修改")
          .onClick(()=>{
            this.message="我修改了"
            this.year.name = "Link名称我修改了1"
            this.yellowButtonProp+=50
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
