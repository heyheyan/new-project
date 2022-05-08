<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <div>소은아 안녕</div>
    <br>
    <div>input box</div>
    <div>
      <input type="text" v-model="textModel">
      <div @click="textModelEvent">textModel 확인</div>                         
    </div>
    <br>
    <div>check box</div>
      <label><input type="checkbox" v-model="checkModel" value="1">아빠</label>
      <label><input type="checkbox" v-model="checkModel" value="2">엄마</label>
      <div @click="checkModelEvent">checkModel 확인</div>
    <br>
    <br>
    <div>select box</div>
      <select v-model="selectModel">셀렉트
        <option value="01">소은</option>
        <option value="02">다현</option>
      </select>
      <div @click="selectModelEvent">selectModel 확인</div>
    <br>
    <div>radio box</div>
      <label><input type="radio" v-model="radioModel" value="1">아빠</label>
      <label><input type="radio" v-model="radioModel" value="2">엄마</label>
      <label><input type="radio" v-model="radioModel" value="3">소은</label>
      <label><input type="radio" v-model="radioModel" value="4">다현</label>
      <div @click="radioModelEvent">checkModel 확인</div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import HelloWorld from '@/components/HelloWorld.vue'; // @ is an alias to /src

@Component({
  components: {
    HelloWorld,
  },
})
export default class HomeView extends Vue {
  private textModel?: string = '';
  private checkModel?: string[] = [];
  private selectModel?: string = '01';
  private radioModel?: string = '';

  private textModelEvent() {
    console.log(this.textModel);
  }

  private checkModelEvent() {
    console.log(this.checkModel);
  }

  private selectModelEvent() {
    console.log(this.selectModel);
  }

  private radioModelEvent() {
    console.log(this.radioModel);
  }
}
</script>
