<template>
    <div id="app">
        <Container>
            <div class="image-container"></div>
            <div class="divider-container"><VDivider /></div>
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
    margin: 0 12rem;
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

.image-container {
    width: 35%;
}

.divider-container {
    height: 200px;
}

.form-box-container {
    margin: 2rem 0;
    width: 65%;
}
</style>
