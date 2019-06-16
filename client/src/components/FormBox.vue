<template>
    <div class="form-container">
        <Header :level="1">Garage Opener</Header>
        <form @submit="submitForm">
            <div class="form-controls-container">
                <input
                    class="password-input"
                    type="password"
                    v-model="password"
                    placeholder="Enter Password"
                />
                <button
                    class="garage-button"
                    type="submit"
                    :disabled="isDisabled"
                    v-bind:class="{ 'garage-button-disabled': isDisabled }"
                >
                    Toggle Garage
                </button>
            </div>
        </form>
    </div>
</template>

<script>
import Header from './Header';

export default {
    name: 'FormBox',
    components: {
        Header
    },
    data: () => ({
        password: '',
        isDisabled: false
    }),
    methods: {
        disableButton() {
            this.isDisabled = true;
        },
        enableButton() {
            this.isDisabled = false;
        },
        submitForm(e) {
            e.preventDefault();
            this.disableButton();
            setTimeout(() => this.enableButton(), 5000);
        }
    }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.form-container {
    display: flex;
    flex-direction: column;
    /* justify-content: center; */
}

.form-controls-container {
    display: flex;
    flex-direction: column;
}

.form-controls-container .password-input {
    height: 30px;
    width: 200px;
    margin: 0.5rem 0;
    font-size: 16px;
    border-top: none;
    border-left: none;
    border-right: none;
}

.form-controls-container .password-input:focus {
    outline: none;
    border-bottom-color: #555;
}

.form-controls-container .garage-button {
    margin-top: 1rem;
    padding: 0.3rem 1rem;
    width: 200px;
    line-height: 1.7rem;
    font-size: 16px;
    font-weight: bold;
    text-transform: uppercase;
    letter-spacing: 0.05rem;
    color: #fff;
    border-radius: 5px;
    outline: none;
    cursor: pointer;
    background-color: #42b883; /* Vue green */
    border: none;
    border-bottom: 4px solid #2fa06d;
}

.form-controls-container .garage-button:hover {
    transform: translateY(-1px);
    transition: all 0.15s ease;
}

.form-controls-container .garage-button:active {
    background-color: #2fa06d;
    transform: translateY(2px);
    transition: all 0.15s ease;
}

.form-controls-container .garage-button-disabled {
    background-color: #bdbdbd;
    border-bottom: 4px solid #9e9e9e;
}
</style>
