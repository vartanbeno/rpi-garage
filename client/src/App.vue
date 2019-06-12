<template>
  <div id="app">
    <FormBox/>
  </div>
</template>

<script>
import FormBox from './components/FormBox';

export default {
    name: 'app',
    components: {
        FormBox
    }
};
</script>

<style>
* {
    box-sizing: border-box;
}

html,
body {
    height: 100%;
    margin: 0;
    padding: 0;
}

#app {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    color: #2c3e50;
    display: flex;
    flex-direction: column;
    min-height: 100%;
    /* todo remove this bg color */
    background-color: #555;
}
</style>
