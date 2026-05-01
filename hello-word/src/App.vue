<template>
<!--   <TheHeader v-if="showHeader"/>

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
   -->



   <button v-on:click="onClick()">
    Enviar
   </button>

   <br>

   <div @mouseover="onMouseover"
        @mouseout="onMouseOut"
   >
    Mouse over
   </div>

   <br><br>
   <form action="https://google.com"
    @v-on:submit="onSubmit()"
   >
      <button type="submit">
        Enviar
      </button>

   </form>
 <!--  <div>
    two way data binding
    v-model -> formularios
  </div>

  <br><br>

  <div>
    <label>Nome</label>
  <input 
        v-model="name"
        type="text"
  ><br>

  {{ name }}

  </div>

  <br>><br>

  <div>
    <label>Sports</label><br>
    <select v-model="sports">
      
      <option value="">ESCOLHA</option>
      <option value="futebol">FUTEBOL</option>
      <option value="basquete">BASQUETE</option>
      <option value="tenis">TENIS</option>
    </select><br>
    {{ sports }}
  </div>

  <br><br>
  <div>
    <label>News Letter</label>
    <input
      v-model="newsletter"
      type="radio"
      value="Sim"
      > Sim
    <input
      v-model="newsletter"
      type="radio"
      value="Não"
      > Não
      <br><br>    
      {{ newsletter }}
  </div>

<br><br>

<div>
<label>Contrato</label><br>
<input
    v-model="contract"
    type="checkbox"
    >aceita nossos termos... 

    <br>

    {{ contract }}

</div> -->
</template>

<script>
/* import HelloWorld from './components/HelloWorld.vue'
import TheHeader from './components/TheHeader.vue'; */

export default {
  name: 'App',
/*   components: {
    HelloWorld,
      TheHeader
  }, */
  data(){
    return{



/* 
      teste do v-model
      name: '',
      sports: '',
      newsletter: '',
      contract: '', */

 /*      pClass: 'text',
      isHome: true,
      classVar: 'title',
      /* showHeader: true,
      firstName: 'Enzo',
      lastName: 'Gabriel',
      showtName: false,
      acessLevel: 'admin' */

 /*      todos: 	
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
] */
    }
  },

    methods: {
      onClick(){
        console.log('click');
      },
      onMouseover($evt){
        console.log('mouse over', $evt);
      },
      onMouseOut($evt){
        console.log('mouse out', $evt)
      },
      onSubmit(){
        console.log('submit');
      },
    },
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
