<template>
    <div class="container">
        <slot></slot>
    </div>
</template>

<script>
export default {
    name: 'Container'
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.container {
    background-color: #fff;
    border-radius: 20px;
    box-shadow: 0 4px 6px rgba(50, 50, 93, 0.07);
}
</style>
