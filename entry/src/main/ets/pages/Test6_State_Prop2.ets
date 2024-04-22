@Preview
@Component
export struct Test6_State_Prop2 {
  @Prop lableString :string
  @State textEnable :boolean = false



  build() {
    Row(){
      Text(this.lableString)

      Button("子组件点击修改")
        .width("180vp")
        .height("80vp")
        .offset({ x: "90vp", y: "412.88vp" })
        .onClick(()=>{
          this.lableString ="123123123"
          this.textEnable = !this.textEnable
        })
    }
    .backgroundColor(Color.Orange)
    .width("100%")
    .height("169.33vp")
  }
}