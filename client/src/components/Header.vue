<script>
export default {
    name: 'Header',
    render(createElement) {
        if (![1, 2, 3, 4, 5, 6].includes(this.level)) {
            throw new Error('Header level must be between 1 and 6, inclusive.');
        }
        return createElement('h' + this.level, this.$slots.default);
    },
    props: {
        level: {
            type: Number,
            required: true
        }
    }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1,
h2,
h3,
h4,
h5,
h6 {
    margin: 0.25rem 0;
}
</style>
