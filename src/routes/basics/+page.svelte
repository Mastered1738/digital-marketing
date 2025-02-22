<script lang="ts">
    // No additional scripts needed for the basic tutorial page
  </script>
  
  <svelte:head>
    <title>NestJS - Basics</title> 
</svelte:head>
  <main class="container mx-auto p-8 flex flex-col gap-8">
    <!-- Introduction Section -->
    <section id="intro" class="bg-white rounded-lg text-black p-6 hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2">
      <h1 class="heading text-4xl font-bold">Starting out</h1>
      <p class="body-large">
        Seting up and making basic parts
      </p>
    </section>
  
    <!-- Setup Section -->
    <section id="setup" class="bg-white rounded-lg text-black p-6 hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2">
      <h2 class="heading text-2xl font-semibold">Setup</h2>
      <p class="body pb-4">
        To get started with NestJS, install the CLI and create a new project:
      </p>
      <pre class="pre bg-secondary rounded hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2">
        npm i -g @nestjs/cli
        nest new project-name
      </pre>
    </section>
  
    <!-- Basic Example Section -->
    <section id="basic-example" class="bg-white rounded-lg text-black p-6 hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2">
      <h2 class="heading text-2xl font-semibold">Basic Example</h2>
      <p class="body">
        Create a simple module, controller and service to handle a basic GET request.
      </p>
      <p class="pt-4 pb-4 text-xl"><strong>Module:</strong></p>
      <pre class="pre bg-secondary rounded hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2" style="color: #ebdbb2;">
        <span style="color: #d3869b;">// Inside src/app.module.ts</span>
        <span style="color: #fb4934;">import</span> &#123; <span style="color: #fabd2f;">Module</span>, <span style="color: #fabd2f;">Controller</span>, <span style="color: #fabd2f;">Get</span>, <span style="color: #fabd2f;">Injectable</span> &#125; <span style="color: #83a598;">from</span> '@nestjs/common';
        
        <span style="color: #d3869b;">// Define AppModule class and import necessary decorators</span>
        <span style="color: #fe8019;">@Module</span>(&#123;
          controllers: [HelloController],
          providers: [AppService],
        &#125;)
        class AppModule &#123; &#125;
      
        <span style="color: #fe8019;">// Export the module</span>
        <span style="color: #fb4934;">export default</span> AppModule;
      </pre>
      <p class="pt-4 pb-4 text-xl"><strong>Controller:</strong></p>
      <pre class="pre bg-secondary rounded hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2" style="color: #ebdbb2;">
        <span style="color: #d3869b;">// Inside src/controllers/hello.controller.ts</span>
        <span style="color: #fb4934;">import</span> &#123; <span style="color: #fabd2f;">Controller</span>, <span style="color: #fabd2f;">Get</span> &#125; <span style="color: #83a598;">from</span> '@nestjs/common';
      
        <span style="color: #fb4934;">@Controller</span>('hello')
        <span style="color: #fb4934;">export</span> <span style="color: #fb4934;">class</span> HelloController &#123;
          <span style="color: #fb4934;">@Get</span>()
          getHello(): <span style="color: #8ec07c;">string</span> &#123;
            <span style="color: #8ec07c;">return</span> 'Hello World!';
          &#125;
        &#125;
      </pre>      
      <p class="pt-4 pb-4 text-xl"><strong>Service:</strong></p>
      <pre class="pre bg-secondary rounded hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2" style="color: #ebdbb2;">
        <span style="color: #d3869b;">// Inside src/providers/hello.service.ts</span>
        <span style="color: #fb4934;">import</span> &#123; <span style="color: #fabd2f;">Injectable</span> &#125; <span style="color: #83a598;">from</span> '@nestjs/common';
      
        <span style="color: #fb4934;">@Injectable</span>()
        <span style="color: #fb4934;">export class</span> AppService &#123;
          getHello(): <span style="color: #8ec07c;">string</span> &#123;
            <span style="color: #8ec07c;">return</span> 'Hello World!';
          &#125;
        &#125;
      </pre>
    </section>
  
    <!-- Advanced Topics Section -->
    <section id="advanced-topics" class="bg-white rounded-lg text-black p-6 hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2">
      <h2 class="heading text-2xl font-semibold">Advanced Topics</h2>
      <p class="body pb-4">
        Explore more advanced concepts such as middleware, guards, and microservices.
      </p>
      <ul class="list-disc pl-6">
        <li>
            <a href="../advanced#middleware" class="inline-block px-6 py-3 bg-rose-600 text-white rounded-md shadow-md transition duration-300 ease-in-out transform hover:-translate-y-1">Using Middleware</a>
        </li>
        <li class="mt-4">
            <a href="../advanced#guards" class="inline-block px-6 py-3 bg-rose-600 text-white rounded-md shadow-md transition duration-300 ease-in-out transform hover:-translate-y-1">Implementing Guards</a>
        </li>
        <li class="mt-4">
            <a href="../advanced#microservices" class="inline-block px-6 py-3 bg-rose-600 text-white rounded-md shadow-md transition duration-300 ease-in-out transform hover:-translate-y-1">Building Microservices</a>
        </li>
    </ul>
    </section>
  </main>

  <footer class="bg-black py-4 text-white">
    <div class="container mx-auto text-center">
      <p>&copy; 2024 NestJS Tutorial. All rights reserved.</p>
    </div>
  </footer>
  