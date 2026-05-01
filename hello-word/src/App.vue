<template>
  <TheHeader v-if="showHeader"/>

    <h1 :class="classVar">
    teste
  </h1>

  <div v-show="showName">
    Nome: {{ firstName }} <br>
    Sobrenome: {{ lastName }}
  </div>

  <div v-if="acessLevel ==='admin'"> Usuario Admin</div>
  <div v-else-if="acessLevel === 'Marketing'">Usuario Marketing</div>
  <div v-else>Usuario User</div>

  <h1 :class = "{'title': false, 'title-home': isHome}">
    Curso vue 3
  </h1>

  <p :class="['text', {'title-home': isHome}]">
    Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo omnis harum facere amet ea iusto praesentium quisquam quam facilis veritatis tempora aspernatur, quos consectetur impedit nostrum, quia eos maiores inventore.
  </p>
  <p :style="{'color': 'aqua', 'background-color': 'black'}">
    Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo omnis harum facere amet ea iusto praesentium quisquam quam facilis veritatis tempora aspernatur, quos consectetur impedit nostrum, quia eos maiores inventore.
  </p>

  <div v-for="(obj, index) in todos"
      v-bind:key="obj.id"
      class="todos-item"
  >
      {{index}} - {{ obj.title }}
  </div>
  <img

  alt="Vue logo" src="./assets/logo.png">
  <HelloWorld msg="Welcome to Your Vue.js App"/>
  
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import TheHeader from './components/TheHeader.vue';

export default {
  name: 'App',
  components: {
    HelloWorld,
      TheHeader
  },
  data(){
    return{
      pClass: 'text',
      isHome: true,
      classVar: 'title',
      /* showHeader: true,
      firstName: 'Enzo',
      lastName: 'Gabriel',
      showtName: false,
      acessLevel: 'admin' */

      todos: 	
[
  {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  },
  {
    "userId": 1,
    "id": 2,
    "title": "quis ut nam facilis et officia qui",
    "completed": false
  },
  {
    "userId": 1,
    "id": 3,
    "title": "fugiat veniam minus",
    "completed": false
  },
  {
    "userId": 1,
    "id": 4,
    "title": "et porro tempora",
    "completed": true
  },
  {
    "userId": 1,
    "id": 5,
    "title": "laboriosam mollitia et enim quasi adipisci quia provident illum",
    "completed": false
  }
]
    }
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
