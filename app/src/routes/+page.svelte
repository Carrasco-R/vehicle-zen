<script>
  import { Copy } from "lucide-svelte";

  const basics = [
    {
      label: "Year, Make, Model",
      value: "2013 Toyota Corolla",
    },
    {
      label: "Exterior Color",
      value: "Black",
    },
    {
      label: "Interior Color",
      value: "Grey",
    },
    {
      label: "Body Style",
      value: "Sedan",
    },
    {
      label: "Drivetrain",
      value: "Front Wheel Drive",
    },
    {
      label: "Transmission",
      value: "Automatic",
    },
    {
      label: "Engine",
      value: "2.0L I4",
    },
  ];
  const basicReg = [
    {
      label: "VIN",
      value: "12NKJ3N1K2J32JL",
    },
    {
      label: "Plate #",
      value: "12NKJ3N1K2J32JL",
    },
    {
      label: "Insurance Company",
      value: "12NKJ3N1K2J32JL",
    },
    {
      label: "Insurance Policy ID",
      value: "12NKJ3N1K2J32JL",
    },
  ];
</script>

<label for="my-drawer-2" class="btn btn-primary drawer-button lg:hidden">
  Open drawer
</label>
<main>
  <div class="hero mb-5">
    <div class="hero-content px-0 flex-col lg:flex-row">
      <img
        src="toyota.jpg"
        class="max-w-sm rounded-lg shadow-lg"
        alt="A 2019 Porsche Cayman"
      />
      <div>
        <h1 class="text-5xl font-bold">2013 Toyota Corolla</h1>
        <p class="py-6">
          Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda
          excepturi exercitationem quasi. In deleniti eaque aut repudiandae et a
          id nisi.
        </p>
        <button class="btn btn-neutral">Get Started</button>
      </div>
    </div>
  </div>
  <div class="flex w-full gap-5">
    <ul class="list bg-base-100 grow rounded-box shadow-lg">
      <li class="p-4 pb-2 text-3xl tracking-wide">
        <strong>Basics</strong>
      </li>

      {#each basics as { label, value } (label)}
        <li class="list-row">
          <div></div>
          <div class="text-md">{label}</div>
          <div class="text-md">{value}</div>
          <button class="btn btn-square btn-ghost size-7">
            <Copy />
          </button>
        </li>
      {/each}
    </ul>
    <ul class="list bg-base-100 grow rounded-box shadow-lg">
      <li class="p-4 pb-2 text-3xl font-bold tracking-wide">
        Registration & Insurance
      </li>
      {#each basicReg as { label, value } (label)}
        <li class="list-row">
          <div></div>
          <div class="text-md">{label}</div>
          <div class="text-md">{value}</div>
          <button class="btn btn-square btn-ghost size-7">
            <Copy />
          </button>
        </li>
      {/each}
    </ul>
  </div>
</main>
