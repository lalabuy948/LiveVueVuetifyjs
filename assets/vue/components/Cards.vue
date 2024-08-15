<template>
    <v-container class="bg-surface-variant">
        <v-row no-gutters>
            <v-col>
                <v-card
                    class="pa-2 ma-2"
                    prepend-icon="$vuetify"
                    subtitle="/assets/vue/components/Cards.vue"
                    :href="props.links.home_page"
                    height="175px"
                >
                    <template v-slot:title>
                        <span class="font-weight-black"
                            >Welcome to Vuetify</span
                        >
                    </template>

                    <v-card-text class="bg-surface-light pt-4">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    </v-card-text>
                </v-card>
            </v-col>
            <v-col>
                <v-card
                    class="pa-2 ma-2"
                    subtitle="/assets/vue/components/Calendar.vue"
                    prepend-icon="$vuetify"
                    :href="props.links.calendar_page"
                    height="175px"
                >
                    <template v-slot:title>
                        <span class="font-weight-black">Calendar example</span>
                    </template>

                    <v-card-text class="bg-surface-light pt-4">
                        Keep in mind it's from Labs and might be unstable
                    </v-card-text>
                </v-card>
            </v-col>
        </v-row>

        <v-row no-gutters>
            <v-col>
                <v-card
                    class="pa-2 ma-2"
                    prepend-icon="$vuetify"
                    subtitle="/assets/vue/components/OTP.vue"
                    :href="props.links.otp_page"
                    height="250px"
                >
                    <template v-slot:title>
                        <span class="font-weight-black">OTP Example</span>
                    </template>

                    <v-card-text class="bg-surface-light pt-4">
                        One Time Password, not as great as Open
                        Telecommunication Platform
                    </v-card-text>
                </v-card>
            </v-col>
            <v-col>
                <v-card
                    class="pa-2 ma-2"
                    prepend-icon="$vuetify"
                    subtitle="/assets/vue/components/Timeline.vue"
                    :href="props.links.timeline_page"
                    height="250px"
                >
                    <template v-slot:title>
                        <span class="font-weight-black">Timeline Example</span>
                    </template>

                    <v-card-text class="bg-surface-light pt-4">
                        Timeline of whatever.
                    </v-card-text>
                </v-card>
            </v-col>
            <v-col>
                <v-card
                    class="pa-2 ma-2"
                    subtitle="Just card with image"
                    title="Just card"
                    height="250px"
                >
                    <v-img
                        height="150px"
                        src="https://picsum.photos/350/200?random=2"
                        cover
                    ></v-img>
                </v-card>
            </v-col>
        </v-row>

        <v-row no-gutters>
            <v-col cols="2">
                <v-card
                    class="pa-2 ma-2"
                    subtitle="Just card with image"
                    title="Just card"
                >
                    <v-img
                        height="150px"
                        src="https://picsum.photos/150/150"
                        cover
                    ></v-img>
                </v-card>
            </v-col>
            <v-col>
                <v-card
                    class="pa-2 ma-2"
                    subtitle="Just card with image"
                    title="Just card"
                >
                    <v-img
                        height="150px"
                        src="https://picsum.photos/1500/500"
                        cover
                    ></v-img>
                </v-card>
            </v-col>
        </v-row>
    </v-container>
</template>

<script setup lang="ts">
const props = defineProps<{ links: Record<string, string> }>();
</script>
