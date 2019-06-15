<template>
  <div id="app">
    <Container/>
  </div>
</template>

<script>
import FormBox from './components/FormBox';
import Container from './components/Container';

export default {
    name: 'app',
    components: {
        FormBox,
        Container
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

body {
    background-color: #edeff4;
}

#app {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    color: #2c3e50;
    display: flex;
    flex-direction: column;
    justify-content: center;
    min-height: 100%;
    margin: 0 10rem;
}

@media (max-width: 960px) {
    #app {
        margin: 0 5rem;
    }
}

@media (max-width: 600px) {
    #app {
        margin: 0 1rem;
    }
}
</style>
