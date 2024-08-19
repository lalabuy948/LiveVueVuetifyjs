<template>
    <v-sparkline
        :auto-line-width="autoLineWidth"
        :fill="fill"
        :gradient="gradient"
        :gradient-direction="gradientDirection"
        :line-width="width"
        :model-value="props.values"
        :padding="padding"
        :smooth="true"
        :stroke-linecap="lineCap"
        :type="type"
        auto-draw
    ></v-sparkline>
</template>

<script setup lang="ts">
import { ref } from "vue";
const props = defineProps<{ values: [number] }>();

const gradients = [
    ["#222"],
    ["#42b3f4"],
    ["red", "orange", "yellow"],
    ["purple", "violet"],
    ["#00c6ff", "#F0F", "#FF0"],
    ["#f72047", "#ffd200", "#1feaea"],
];

const width = ref(2);
const padding = ref(8);
const lineCap = ref("round");
const gradient = ref(gradients[5]);
const gradientDirection = "top";
const fill = ref(false);
const type = "trend";
const autoLineWidth = ref(false);
</script>
