import PeopleData from '../common/entity/peopleVo'
@Preview
@Component
export struct Test6_State_Prop2 {
  @Prop lableString :string
  @State textEnable :boolean = false
  // @Link year : PeopleData



  build() {
    Row(){

      Text(this.lableString)
      // Text(this.year)

      Button("子组件点击修改")
        .onClick(()=>{
          this.lableString ="123123123"
          // this.year.name ="Link修改了"
          this.textEnable = !this.textEnable
        })
    }
  }
}