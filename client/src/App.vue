<template>
    <div id="app">
        <Container class="main-container">
            <div class="header-container">
                <Header :level="1" class="title">Garage Door Opener</Header>
                <font-awesome-icon :icon="['fas', 'warehouse']" size="2x" />
            </div>
            <div class="garage-container">
                <PasswordField @change="getPassword" />
                <div class="garage-buttons-container">
                    <div>
                        <Header :level="1" class="garage-button-header">
                            Left
                        </Header>
                        <GarageButton
                            :whichDoor="'LEFT'"
                            v-bind:password="password"
                        />
                    </div>
                    <div>
                        <Header :level="1" class="garage-button-header">
                            Right
                        </Header>
                        <GarageButton
                            :whichDoor="'RIGHT'"
                            v-bind:password="password"
                        />
                    </div>
                </div>
            </div>
        </Container>
    </div>
</template>

<script>
import Container from './components/Container';
import GarageButton from './components/GarageButton';
import Header from './components/Header';
import PasswordField from './components/PasswordField';

export default {
    name: 'app',
    components: {
        Container,
        GarageButton,
        Header,
        PasswordField
    },
    data: () => ({
        password: ''
    }),
    methods: {
        getPassword(password) {
            this.password = password;
        }
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

    .title {
        font-size: 28px;
    }
}

.garage-container {
    display: flex;
    flex-direction: column;
    margin: 0 1rem;
    padding: 1.5rem 0;
    border-bottom-left-radius: inherit;
    border-bottom-right-radius: inherit;
}

.garage-buttons-container {
    display: flex;
    justify-content: space-evenly;
    margin-top: 2rem;
}

.garage-button-header {
    text-align: center;
    text-transform: uppercase;
}

@media (max-width: 500px) {
    .main-container {
        margin: 1rem 0;
    }

    .garage-container {
        align-items: center;
    }

    .garage-buttons-container {
        flex-direction: column;
        justify-content: start;
        align-items: center;
    }

    .garage-buttons-container > :not(:first-child) {
        margin-top: 2rem;
    }
}
</style>
