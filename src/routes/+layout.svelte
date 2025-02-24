<script>
  import SidebarContent from "$lib/components/SidebarContent.svelte";
  import "../app.css";
  let { children } = $props();
</script>

<div class="drawer lg:drawer-open">
  <input id="app-sidebar" type="checkbox" class="drawer-toggle" />
  <div
    class="drawer-content bg-base-200 flex flex-col items-center justify-center pt-10"
  >
    <!-- Page content here -->
    {@render children()}
  </div>
  <div class="drawer-side">
    <SidebarContent></SidebarContent>
  </div>
</div>
