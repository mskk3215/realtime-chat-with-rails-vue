<template>
  <div>
    <h1>{{ title }}</h1>
    <!-- <h1>{{ 3 + 3 }}</h1> -->
    <!-- <p>{{ subtitle }}</p> -->
    <p v-if="isEnabled">{{ subtitle }}</p>
    <button @dblclick="toggle">トグルする</button>
    <p>{{ text }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      title: '初めてのVue.jsアプリです!',
      subtitle: 'ようこそ',
      isEnabled: true,
    };
  },
  computed: {
    text() {
      if (this.isEnabled) {
        return 'こんにちは！';
      }
      return 'さよなら!';
    },
  },
  methods: {
    toggle() {
      this.isEnabled = !this.isEnabled;
    },
  },
};
</script>
