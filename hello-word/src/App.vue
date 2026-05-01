<template>
<div>
  {{ fullName }} <br> <br>

  <h2>Todos em aberto</h2>

  <div v-for="todo in uncompletedTodo"
  :key="todo.id">
  {{ todo.title }} <span>{{ todo.completed }}</span>
</div>

<br><br>

    <h2>TODOS EM ABERTO</h2>
  <div v-for="todo in completedTodo"
    :key="todo.id">
    {{ todo.title }} <span>{{ todo.completed }}</span>
  </div>    
  <br><br><br>

  <h2>TODOS</h2>
  <div v-for="todo in todos"
    :key="todo.id">
    
    <input v-model="todo.completed"
      type="checkbox"
    >
    {{ todo.title }}
  </div>

</div>
</template>

<script>
/* import HelloWorld from './components/HelloWorld.vue'
import TheHeader from './components/TheHeader.vue'; */

export default {
  name: 'App',
  data(){
    return{

      user:{
        firstName: 'Jon',
        lastName: 'Snow'
      },
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
  },

  computed: {
    fullName(){
     return `${this.user.firstName} ${this.user.lastName}`
    },
    uncompletedTodo(){
      return this.todos.filter(todo => !todo.completed);
    },
    completedTodo(){
      return this.todos.filter(todo => todo.completed);
    }

  },

    methods: {

      click(){
        console.log('this');
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
