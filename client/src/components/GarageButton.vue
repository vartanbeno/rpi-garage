<template>
    <div
        class="garage-button-container"
        v-bind:class="{ disabled: isDisabled }"
    >
        <button @click="toggleGarage" :disabled="isDisabled">
            <div
                class="button-light"
                v-bind:class="{ disabled: isDisabled }"
            ></div>
        </button>
        <div class="garage-button-label">
            <Header :level="5">LiftXpert</Header>
            <Header :level="6">Security</Header>
        </div>
        <div class="multiple-labels">
            <div class="garage-button-label lock-label">
                <Header :level="6">Lock</Header>
                <font-awesome-icon :icon="['fas', 'lock']" size="xs" />
            </div>
            <div class="garage-button-label light-label">
                <Header :level="6">Light</Header>
                <font-awesome-icon :icon="['fas', 'lightbulb']" size="xs" />
            </div>
        </div>
    </div>
</template>

<script>
import GarageService from '../services/GarageService';
import Header from './Header';

export default {
    name: 'GarageButton',
    components: {
        Header
    },
    props: {
        whichDoor: {
            type: String,
            required: true
        },
        password: {
            type: String
        }
    },
    data: () => ({
        isDisabled: false
    }),
    methods: {
        toggleGarage() {
            GarageService.toggleGarageDoor(this.password, this.whichDoor).then(
                res => {
                    this.isDisabled = true;
                    setTimeout(() => (this.isDisabled = false), 3000);
                    alert(`${res.status}: ${res.data}`);
                },
                err => alert(`${err.response.status}: ${err.response.data}`)
            );
        }
    }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.garage-button-container {
    display: flex;
    flex-direction: column;
    color: #fff;
    height: 300px;
    width: 200px;
    padding: 0.75rem;
    background-color: #000;
}

.disabled {
    opacity: 0.6;
}

.garage-button-container > :not(:first-child) {
    margin-top: 0.5rem;
}

button {
    display: flex;
    justify-content: center;
    height: 55%;
    width: 100%;
    outline: none;
    cursor: pointer;
    background-color: #fff;
    border: none;
    border-bottom: 4px solid #d1d3da;
    -webkit-appearance: none; /* makes it look as intended on iOS Safari */
}

.garage-button-container,
button {
    border-radius: 4px;
}

button:active {
    background-color: #edeff4;
    transform: translateY(1px);
    transition: all 0.15s ease;
}

button .button-light {
    background: transparent;
    height: 4px;
    width: 4px;
    background-color: #42b883;
    border-radius: 50%;
    box-shadow: 0 0 5px 5px #42b883;
}

button .button-light.disabled {
    background-color: #f44336;
    box-shadow: 0 0 5px 5px #f44336;
}

.garage-button-label {
    padding: 0.25rem;
    border: 1px solid #2c3e50;
    border-radius: 4px;
}

.garage-button-label * {
    margin: 0;
}

.multiple-labels {
    display: flex;
}

.multiple-labels > :not(:first-child) {
    margin-left: 0.5rem;
}

.lock-label {
    width: 25%;
}

.light-label {
    width: 75%;
}
</style>
