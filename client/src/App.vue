<template>
    <div id="app">
        <Container class="main-container">
            <div class="header-container">
                <Header :level="1">Garage Door Opener</Header>
                <font-awesome-icon :icon="['fas', 'warehouse']" size="2x" />
            </div>
            <div class="actions-container">
                <div class="icon-container">
                    <font-awesome-icon :icon="['fas', 'warehouse']" size="3x" />
                    <a
                        class="github-link"
                        href="https://github.com/vartanbeno/rpi-garage"
                        target="_blank"
                    >
                        <font-awesome-icon
                            :icon="['fab', 'github']"
                            size="3x"
                        />
                    </a>
                </div>
                <div><VDivider /></div>
                <div class="form-box-container">
                    <FormBox />
                </div>
            </div>
        </Container>
    </div>
</template>

<script>
import Container from './components/Container';
import FormBox from './components/FormBox';
import Header from './components/Header';
import VDivider from './components/VDivider';

export default {
    name: 'app',
    components: {
        Container,
        FormBox,
        Header,
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

.main-container {
    display: flex;
    flex-direction: column;
}

.header-container {
    padding: 0.5rem 1rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 4px 6px rgba(50, 50, 93, 0.07);
    background-color: #d1d3da;
    border-top-left-radius: inherit;
    border-top-right-radius: inherit;
}

@media (max-width: 450px) {
    .header-container {
        flex-direction: column;
        text-align: center;
    }
}

.actions-container {
    display: flex;
    padding: 2rem 0;
    border-bottom-left-radius: inherit;
    border-bottom-right-radius: inherit;
}

.icon-container {
    width: 20%;
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;
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
