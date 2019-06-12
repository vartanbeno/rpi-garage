<template>
  <form class="form-container">
    <input class="password-input" type="password" v-model="password" placeholder="Enter Password">
    <button class="garage-button" type="submit">Toggle Garage</button>
  </form>
</template>

<script>
export default {
    name: 'FormBox',
    data: () => ({
        password: ''
    })
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.form-container {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.form-container .password-input {
    height: 30px;
    width: 200px;
    border-top: none;
    border-left: none;
    border-right: none;
    font-size: 16px;
}

.form-container .password-input:focus {
    outline: none;
    border-bottom-color: #555;
}

.form-container .garage-button {
    margin: 1rem;
    padding: 0.3rem 1rem;
    line-height: 1.7rem;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    border-radius: 5px;
    outline: none;
    cursor: pointer;
    background-color: #42b883;      /* Vue green */
    border: 2px solid #fff;
}

.form-container .garage-button:hover {
    background-color: #39aa77;
    font-size: 18px;
    transition: all .2s;
}

.form-container .garage-button:active {
    background-color: #2fa06d;
    font-size: 18px;
    transition: all .2s;
}
</style>
