<template>
  <div id="wrapper">
    <!-- main view -->
    <router-view
      class="view"
      keep-alive
      transition
      transition-mode="out-in">
    </router-view>
  </div>
</template>

<script>
  import { generate } from 'utils/log/generator.js'
</script>

<style lang="stylus">
@import "../variables.styl"

html, body
  font-family Verdana
  font-size 13px
  height 100%
  background-color $black

@media screen and (max-width: 700px)
  html, body
    margin 0
  #wrapper
    width 100%
</style>
