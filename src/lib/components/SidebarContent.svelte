<script>
  import { Car, ChevronsUpDown } from "lucide-svelte";
  import { page } from "$app/state";
</script>

<label for="app-sidebar" aria-label="close sidebar" class="drawer-overlay">
</label>
<div class="menu bg-base-200 text-base-content min-h-full w-80 p-4">
  <!-- Sidebar content here -->
  <div class="dropdown dropdown-bottom dropdown-end">
    <div
      tabindex="0"
      role="button"
      class="btn m-1 w-full h-14 flex justify-between"
    >
      <span><strong>2019 Porsche Cayman</strong></span>
      <span><ChevronsUpDown size="16" /></span>
    </div>
    <!-- svelte-ignore a11y_no_noninteractive_tabindex-->
    <ul
      tabindex="0"
      class="dropdown-content menu bg-base-100 rounded-box z-[1] w-52 p-2 shadow"
    >
      <li><a>2013 Toyota Corolla</a></li>
      <li><a>2017 Hyundai Tucson</a></li>
      <li><a>2008 Toyota Camry</a></li>
    </ul>
  </div>
  <ul class="menu bg-base-200 rounded-box w-full">
    <li><a href={page.url}>Dashboard</a></li>
    <li>
      <a>Maintenance</a>
      <ul>
        <li><a>Submenu 1</a></li>
        <li><a>Submenu 2</a></li>
      </ul>
    </li>
    <li>
      <a>Documents</a>
      <ul>
        <li><a>Submenu 1</a></li>
        <li><a>Submenu 2</a></li>
      </ul>
    </li>
    <li><a>Settings</a></li>
  </ul>
</div>
