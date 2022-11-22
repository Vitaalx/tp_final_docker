<template>
  <img alt="Vue logo" src="./assets/logo.png">

  <h1>Utilisateurs :</h1>
  <div class="centered-table">
    <table>
      <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Email</th>
        <th>Crée à</th>
        <th>Modifié à</th>
      </tr>
      <tr v-for="user in users" :key="user.id">
        <td>{{ user.id }}</td>
        <td>{{ user.name }}</td>
        <td>{{ user.email }}</td>
        <td>{{ fdate(user.created_at) }}</td>
        <td>{{ fdate(user.updated_at) }}</td>
      </tr>
    </table>
  </div>

</template>

<script>
import { ref } from 'vue'
import axios from 'axios'

export default {
  name: 'App',
  components: {
  },
  setup() {
    const users = ref([]);

    axios({
      method: 'get',
      url: 'http://localhost:8001/api/users'
    }).then(res => {
      users.value = res.data
    })

    return {
    users
    }
  },
  methods: {
    fdate: function (dateString){
      let tmpTime = new Date(dateString);
      let myYear = tmpTime.getFullYear();
      let myMonth =  tmpTime.getMonth()+1
      myMonth = ("0"+myMonth).slice(-2);
      let myDay = ("0"+tmpTime.getDate()).slice(-2);

      return myDay+'/'+myMonth+'/'+myYear
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
.centered-table {
  display: flex;
  justify-content: center;
}
table {
  background-color: #41B883;
  border-collapse: collapse;
  text-align: left;
  color: #35495e;
}
th, td {
  padding: 10px;
  border: 1px solid #35495e;
}
</style>
