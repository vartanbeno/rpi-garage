<template>
    <div class="container">
        <slot></slot>
    </div>
</template>

<script>
import FormBox from './FormBox';

export default {
    name: 'Container',
    components: {
        FormBox
    }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.container {
    padding: 3rem 2rem;
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    background-color: #fff;
    border-radius: 20px;
    box-shadow: 0 4px 6px rgba(50, 50, 93, 0.07);
}
</style>
