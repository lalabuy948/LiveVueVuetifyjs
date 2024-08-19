<script setup lang="ts">
import { ref } from "vue";
const props = defineProps<{ correct: boolean }>();
const otp = ref<string>("");
const emit = defineEmits<{ verify: [{ value: number }] }>();
</script>

<template>
    <v-sheet
        class="py-8 px-6 mx-auto ma-4 text-center"
        elevation="4"
        max-width="500"
        rounded="lg"
        width="100%"
    >
        <h3 class="text-h5">Verification Code</h3>

        <div class="text-subtitle-2 font-weight-light mb-3">
            Please enter the verification code sent to your mobile
        </div>

        <v-otp-input
            v-model="otp"
            class="mb-8"
            divider="•"
            length="4"
            variant="outlined"
            :error="!props.correct"
        ></v-otp-input>

        <v-btn
            :disabled="otp.length < 4"
            class="my-5"
            color="surface-variant"
            text="Submit"
            variant="tonal"
            @click="emit('verify', { value: parseInt(otp) })"
        ></v-btn>
    </v-sheet>
</template>
