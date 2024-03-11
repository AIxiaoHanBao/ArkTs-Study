// @ts-nocheck
import List from '@ohos.util.List'
import {Test1} from "./test1"

@Entry
@Component

struct Index {
 
  @State message: string = 'Hello World'
  @State flag : boolean = true
  @State list2: Array<string> = [
    '123',
    '123',
  ]

  private wuhu : number  = 0
  @State wuhu2 : number  = 1



  build() {
    Column() {
      Column() {
        ForEach(
          this.list2,(item)=>{
          Test1()
        },(item: string) => JSON.stringify(item)
        )
        Text(this.message)
          .width("300vp")
          .height("60vp")
          .textAlign(TextAlign.Center)
          .fontSize("50fp")
          .fontWeight(FontWeight.Bold)
          .decoration({ type: this.flag ? TextDecorationType.LineThrough : TextDecorationType.None })

        Text(this.wuhu.toString())
          .width("300vp")
          .height("60vp")
        Text(this.wuhu2.toString())
          .width("300vp")
          .height("60vp")


        Button("123123")
          .width("230.36vp")
          .height("80vp")
          .onClick(()=>{
            this.flag = ! this.flag
            this.message= this.flag?"yes":"no"
            this.wuhu2+=1
            this.wuhu+=1
            console.warn("123123"+this.flag)
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