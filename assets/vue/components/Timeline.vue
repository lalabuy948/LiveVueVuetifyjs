<script setup lang="ts">
import { ref } from "vue";
const props = defineProps<{ timeline: [Record<string, string>] }>();

const horizontal = ref(true);
</script>

<template>
    <v-switch
        v-model="horizontal"
        :label="horizontal ? 'horizontal' : 'vertical'"
        hide-details
        inset
    ></v-switch>

    <v-timeline :direction="horizontal ? 'horizontal' : 'vertical'">
        <v-timeline-item v-for="item in props.timeline">
            <template v-slot:opposite> {{ item.opposite }} </template>
            <div>
                <div class="text-h6">{{ item.title }}</div>
                <p>
                    {{ item.body }}
                </p>
            </div>
        </v-timeline-item>
    </v-timeline>
</template>
