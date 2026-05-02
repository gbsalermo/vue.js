<template>
<div>
  <input v-model="name" 
  type="text">

  <br>
  {{ name }}

  <br><br>
   <input v-model="user.firstName" 
  type="text">

  <br>
   <input v-model="user.lastName" 
  type="text">

  <br><br>
  {{ user.firstName }} {{ user.lastName }} 
  


<br><br><br>

<select v-model="pageCount">
  <option value="5"> 5 </option>
  <option value="10"> 10 </option>
  <option value="15"> 15 </option>
</select> <br>

{{pageCount}}

</div>

</template>

<script>
/* import HelloWorld from './components/HelloWorld.vue'
import TheHeader from './components/TheHeader.vue'; */

export default {
  name: 'App',
  data(){
    return{    
        name: '',
        pageCount: 5,
        user: {
            firstName: '',
            lastName: '',
        }

    }
  },

  watch:{
    name(){
          this.saveUsername()
    },
    pageCount(){
      this.changePage();
    },
    user: {
        handler() {
          console.log('User alterado');
        },
        deep: true
      },
  },

  computed: {
    
  },

    methods: {
      saveUsername(){
        console.log('Ajax');
        console.log(this.name);
      },
      changePage(){
        console.log('Ajax changePage');
      },

  }
}
</script>

<style>


.title-home{
  font-size: 40px;
  color: green;
}

.title{
    font-size: 20px;
    color:black;
}

.text{
  color: red;
}

.todos-item{
  background: #000;
  margin: 0 0 5px 0;
  padding: 3px 6px;
  color: #fff;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
