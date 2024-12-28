<template>
  <div>
    <h1>{{ title }}</h1>
    <!-- <h1>{{ 3 + 3 }}</h1> -->
    <!-- <p>{{ subtitle }}</p> -->
    <!-- <p v-if="isEnabled">{{ subtitle }}</p>
    <button @dblclick="toggle">トグルする</button>
    <p>{{ text }}</p> -->
    <TestComponent
      @toggle="toggle"
      message="コンポーネントにデータが渡されています"
    />
    <p v-if="isEnabled">こんにちは</p>
  </div>
</template>

<script>
import TestComponent from '@/components/TestComponent.vue';

export default {
  components: {
    TestComponent,
  },
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
