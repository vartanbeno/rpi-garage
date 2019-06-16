<template>
    <div id="app">
        <Container>
            <div class="icon-container">
                <font-awesome-icon :icon="['fas', 'warehouse']" size="3x" />
                <a
                    class="github-link"
                    href="https://github.com/vartanbeno/rpi-garage"
                >
                    <font-awesome-icon :icon="['fab', 'github']" size="3x" />
                </a>
            </div>
            <div><VDivider /></div>
            <div class="form-box-container">
                <FormBox />
            </div>
        </Container>
    </div>
</template>

<script>
import Container from './components/Container';
import FormBox from './components/FormBox';
import VDivider from './components/VDivider';

export default {
    name: 'app',
    components: {
        Container,
        FormBox,
        VDivider
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
    margin: 0 15rem;
}

@media (max-width: 960px) {
    #app {
        margin: 0 4rem;
    }
}

@media (max-width: 600px) {
    #app {
        margin: 0 1rem;
    }
}

.icon-container {
    width: 35%;
    display: flex;
    flex-direction: row;
    justify-content: space-evenly;
    align-items: center;
}

@media (max-width: 750px) {
    .icon-container {
        flex-direction: column;
    }
}

a {
    color: inherit;
}

a:hover {
    color: #42b883;
}

.form-box-container {
    margin: 2rem 0;
    width: 65%;
}
</style>
