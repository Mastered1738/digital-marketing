<script>
	import Nestjs from "$lib/nestjs.svelte"
	import Typescript from "$lib/typescript.svelte"
	import Module from "$lib/module.svelte"
	import Library from "$lib/library.svelte"
	import '$lib/rainbow.css'
</script>
  
<svelte:head>
    <title>Power Up with NestJS!</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Discover NestJS: a Node.js framework that simplifies backend development with modular architecture and advanced features like Dependency Injection.">  
</svelte:head>
  <main class="container mx-auto p-8 flex flex-col gap-12">
	<!-- Hero Section -->
	<section class="relative flex flex-col items-center justify-center text-center gap-4 bg-primary rounded p-8 shadow">
		<div class="rainbow-border"></div>
		<h1 class="text-5xl font-bold text-on-primary"> &#9889; Power Up with NestJS! &#9889;</h1>
		<div class="flex justify-center">
		  <Nestjs />
		</div>
		<p class="text-lg text-on-primary">
		  The progressive Node.js framework for building efficient, reliable, and scalable server-side applications.
		</p>
		<a href="/intro" class="btn btn-primary text-lg px-8 py-4 relative overflow-hidden transition duration-300 ease-in-out hover:bg-rose-600 hover:shadow-lg hover:-translate-y-2 transform">
		  <span class="absolute inset-0 bg-rose-600 transform scale-0 origin-bottom-left"></span>
		  <span class="relative z-10">GET STARTED!</span>
		</a>
	  </section>
  
	<!-- Features Section -->
	<section class="grid grid-col1 md:grid-col2 lg:grid-col3 gap-8">
		<div class="card-container">
			<div class="relative card-container">
			  <div class="card p-6 text-center bg-secondary text-on-secondary rounded transition-transform duration-300 hover:shadow-rose-hover hover:-translate-y-2">
				<div class="flex justify-center">
				  <Module/>
				</div>
				<h2 class="heading text-2xl font-semibold mt-4">Modular</h2>
				<p class="body">Easily organize your application’s structure with a modular architecture.</p>
			  </div>
			</div>
		  </div>
		  <div class="relative card-container">
			<div class="card p-6 text-center bg-secondary text-on-secondary rounded transition-transform duration-300 hover:shadow-rose-hover hover:-translate-y-2">
				<div class="w-32 h-32 mx-auto">
					<Typescript />
				</div>
				<h2 class="heading text-2xl font-semibold mt-4">TypeScript Ready</h2>
				<p class="body">Build with TypeScript right out of the box, enhancing code quality and maintainability.</p>
			</div>
		</div>
		<div class="relative card-container">
			<div class="card p-6 text-center bg-secondary text-on-secondary rounded transition-transform duration-300 hover:shadow-rose-hover hover:-translate-y-2">
			  <div class="flex justify-center">
				<Library />
			  </div>
			  <h2 class="heading text-2xl font-semibold mt-4">Extensible</h2>
			  <p class="body">Leverage a rich ecosystem of libraries and plugins to extend functionality.</p>
			</div>
		  </div>
	</section>
  
	<!-- Call-to-Action Section -->
	<section class="flex flex-col items-center justify-center text-center gap-4 bg-secondary rounded p-8 shadow hover:shadow-rose-hover">
		<h2 class="text-3xl font-bold text-on-secondary">Ready to dive in?</h2>
		<p class="text-on-secondary">
		Start building your next project with NestJS today. Comprehensive documentation and a supportive community are just a click away.
		</p>
		<a href="/intro" class="btn btn-primary text-lg px-8 py-4 relative overflow-hidden transition duration-300 ease-in-out hover:bg-rose-600 hover:shadow-lg hover:-translate-y-2 transform">
			<span class="absolute inset-0 bg-rose-600 transform scale-0 origin-bottom-left"></span>
			<span class="relative z-10">Start Now</span>
		  </a>
  	</section>
  </main>

  <footer class="bg-black py-4 text-white">
	<div class="container mx-auto text-center">
	  <p>&copy; 2024 NestJS Tutorial. All rights reserved.</p>
	</div>
  </footer>
  