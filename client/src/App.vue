<template>
    <div id="app">
        <Container class="main-container">
            <div class="header-container">
                <Header :level="1">Garage Door Opener</Header>
                <font-awesome-icon :icon="['fas', 'warehouse']" size="2x" />
            </div>
            <div class="garage-container">
                <PasswordField />
            </div>
        </Container>
    </div>
</template>

<script>
import Container from './components/Container';
import Header from './components/Header';
import PasswordField from './components/PasswordField';
import VDivider from './components/VDivider';

export default {
    name: 'app',
    components: {
        Container,
        Header,
        PasswordField,
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

.garage-container {
    display: flex;
    margin: 0 1rem;
    padding: 1.5rem 0;
    border-bottom-left-radius: inherit;
    border-bottom-right-radius: inherit;
}
</style>
