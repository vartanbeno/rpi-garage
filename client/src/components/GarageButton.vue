<template>
    <div class="garage-button-container">
        <button></button>
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
import Header from './Header';

export default {
    name: 'GarageButton',
    components: {
        Header
    },
    props: {
        which: {
            type: String,
            required: true
        }
    }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.garage-button-container {
    display: flex;
    flex-direction: column;
    height: 300px;
    width: 200px;
    padding: 0.75rem;
    background-color: #000;
}

.garage-button-container > :not(:first-child) {
    margin-top: 0.5rem;
}

button {
    height: 55%;
    width: 100%;
    outline: none;
    cursor: pointer;
    border: none;
    border: 4px solid #d1d3da;
}

.garage-button-container,
button {
    border-radius: 10px;
}

button:active {
    /* background-color: #2fa06d; */
    border: none;
    transform: translateY(1px);
    transition: all 0.15s ease;
}

.garage-button-label {
    color: #fff;
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
