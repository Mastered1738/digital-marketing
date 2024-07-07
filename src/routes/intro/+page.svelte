<svelte:head>
    <title>NestJS - Intro</title> 
</svelte:head>

<div class="min-h-screen">
    <!-- Main Content -->
    <main class="container mx-auto px-4 py-8">
      <!-- Introduction Section -->
      <section class="bg-white rounded-lg shadow-md p-8 mb-8 text-black">
        <h2 class="text-3xl font-bold mb-4">What is NestJS?</h2>
        <p class="text-lg leading-relaxed">
          NestJS is a progressive Node.js framework that brings TypeScript support to your backend development. It follows a modular architecture and is built around a set of principles that promote scalability, maintainability, and efficiency in building server-side applications.
        </p>
      </section>
  
      <!-- MVB Architecture Section -->
      <section class="bg-white rounded-lg shadow-md p-8 mb-8 text-black">
        <h2 class="text-3xl font-bold mb-4">Understanding the MVB Architecture</h2>
        <p class="text-lg leading-relaxed">
          NestJS embraces the MVCS architecture, which extends the traditional MVC (Model-View-Controller) pattern by adding Services (S). Here’s a breakdown:
        </p>
        <ul class="list-disc pl-6 text-lg mt-4">
          <li><strong>Model:</strong> Represents the data structure of your application. It is usually defined as TypeScript classes or interfaces.</li>
          <li><strong>View:</strong> In the context of NestJS, the view is the representation of data sent back to clients, often as JSON responses.</li>
          <li><strong>Controller:</strong> Handles incoming requests, interacts with services, and manages the flow of data.</li>
          <li><strong>Service:</strong> Contains the business logic and performs data manipulation tasks. Services are reusable across controllers and promote code modularity.</li>
        </ul>
      </section>
  
      <!-- Key Concepts Section -->
      <section class="bg-white rounded-lg shadow-md p-8 mb-8 text-black">
        <h2 class="text-3xl font-bold mb-4">Key Concepts in NestJS</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
          <div>
            <h3 class="text-2xl font-semibold mb-2">Controllers</h3>
            <p class="text-lg leading-relaxed">
              Controllers are responsible for handling incoming requests and returning the appropriate HTTP responses. They are decorated with route paths and HTTP methods like <code>@Get</code>, <code>@Post</code>, etc.
            </p>
          </div>
          <div>
            <h3 class="text-2xl font-semibold mb-2">Services</h3>
            <p class="text-lg leading-relaxed">
              Services encapsulate the business logic of your application. They are injectable classes that can be shared across different controllers and modules.
            </p>
          </div>
          <div>
            <h3 class="text-2xl font-semibold mb-2">Modules</h3>
            <p class="text-lg leading-relaxed">
              Modules are containers for different parts of your application. They group related controllers, services, and other providers. NestJS uses modules to organize code and manage dependencies.
            </p>
          </div>
          <div>
            <h3 class="text-2xl font-semibold mb-2">Dependency Injection (DI)</h3>
            <p class="text-lg leading-relaxed">
              DI is a design pattern used in NestJS to inject dependencies into components (controllers, services) rather than creating them directly. It promotes reusability, testability, and maintainability.
            </p>
          </div>
        </div>
      </section>
    </main>
  
    <!-- Footer -->
    <footer class="bg-black py-4 text-white">
      <div class="container mx-auto text-center">
        <p>&copy; 2024 NestJS Tutorial. All rights reserved.</p>
      </div>
    </footer>
  </div>
  