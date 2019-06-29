<template>
    <div class="password-container">
        <Header :level="2">What's the Password?</Header>
        <input
            class="password-input"
            type="password"
            v-model="password"
            placeholder="Enter Password"
            v-on:input="emitPassword"
        />
    </div>
</template>

<script>
import Header from './Header';

export default {
    name: 'PasswordField',
    components: {
        Header
    },
    data: () => ({
        password: ''
    }),
    methods: {
        emitPassword(event) {
            this.$emit('change', event.target.value);
        }
    }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.password-container {
    display: flex;
    align-items: center;
}

.password-input {
    height: 30px;
    width: 200px;
    margin: 0.5rem 0 0.5rem 1rem;
    font-size: 16px;
    border-top: none;
    border-left: none;
    border-right: none;
}

.password-input:focus {
    outline: none;
    border-bottom-color: #555;
}

@media (max-width: 650px) {
    .password-container {
        flex-direction: column;
        align-items: flex-start;
    }

    .password-input {
        margin: 0;
    }
}

@media (max-width: 500px) {
    .password-container {
        flex-direction: column;
        align-items: center;
    }

    .password-input {
        text-align: center;
    }
}
</style>
