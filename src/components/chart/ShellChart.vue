<template>
  <svg class="shell-chart" width="{{ width }}px" height="{{ height }}px" >
    <sphere-tree
      :x="width / 2"
      :y="height / 2"
      :tree="tree"
      :shell-info="shellInfo"
      ></sphere-tree>
  </svg>
</template>

<script>

import SphereTree from 'components/chart/SphereTree.vue'

export default {

  name: 'SphereChart',

  components: {
    SphereTree
  },

  props: [
    'width',
    'height',
    'groups',
    'tree'
  ],

  activate(done) {
    done()
    /*setTimeout(()=>{
      //Snap( '#' + this.id ).animate({r: 30 }, 800, mina.elastic);
      this.$broadcast('update-tree', {
        type: 'update',
        path: '/pageA',
        group: 0,
        value: 10
      })
    }, 300)
    setTimeout(()=>{
      this.$broadcast('update-tree', {
        type: 'update',
        path: '/pageB',
        group: 0,
        value: 10
      })
      this.$broadcast('update-tree', {
        type: 'update',
        path: '/pageA',
        group: 0,
        value: 0
      })
      this.$broadcast('update-tree', {
        type: 'move',
        from: '/pageA',
        to: '/pageB',
        group: 0
      })
    }, 600)
    setTimeout(()=>{
      //Snap( '#' + this.id ).animate({r: 30 }, 800, mina.elastic);
      this.$broadcast('update-tree', {
        type: 'move',
        from: '/pageA',
        to: '/pageE',
        group: 0
      })
    }, 3000)*/
  },

  data () {
    return {
    }
  },

  route: {
    data ({ to }) {
      // get from store
    }
  },

  computed: {
    shellInfo() {
      return {
        groups: this.groups
      }
    }
  }
}
</script>

<style lang="stylus">
@import "~styles/colors.styl"

.item-view
  .item
    padding-left 0
    margin-bottom 30px
    .index
      display none
  .poll-options
    margin-left 30px
    margin-bottom 40px
    li
      margin 12px 0
    p
      margin 8px 0
    .subtext
      color $gray
      font-size 11px
  .itemtext
    color $gray
    margin-top 0
    margin-bottom 30px
  .itemtext p
    margin 10px 0
</style>
