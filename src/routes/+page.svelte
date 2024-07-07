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
	
	<!-- Introduction Section -->
	<section>
		<h2 class="text-3xl font-bold text-on-primary mb-4">Why Choose NestJS?</h2>
		<p class="text-on-primary text-lg">
			NestJS stands out in the crowded field of backend frameworks due to its robust architecture and developer-friendly features. Designed to simplify the complexities of backend development, NestJS offers a powerful solution that integrates easily with a variety of libraries and tools, making it suitable for a wide range of applications. Whether you're developing a small project or a large-scale enterprise solution, NestJS provides a scalable, maintainable, and efficient structure.
		</p>
	</section>

	<!-- Features Section -->
	<section class="grid grid-col1 md:grid-col2 lg:grid-col3 gap-8">
		<div class="relative card-container">
			<div class="card p-6 text-center bg-secondary text-on-secondary rounded transition-transform duration-300 hover:shadow-rose-hover hover:-translate-y-2">
				<div class="flex justify-center">
					<Module/>
				</div>
				<h2 class="heading text-2xl font-semibold mt-4">Modular Architecture</h2>
				<p class="body">Easily organize your application’s structure with a modular architecture that promotes reusability and maintainability.</p>
			</div>
		</div>
		<div class="relative card-container">
			<div class="card p-6 text-center bg-secondary text-on-secondary rounded transition-transform duration-300 hover:shadow-rose-hover hover:-translate-y-2">
				<div class="w-32 h-32 mx-auto">
					<Typescript />
				</div>
				<h2 class="heading text-2xl font-semibold mt-4">TypeScript Integration</h2>
				<p class="body">Build with TypeScript right out of the box, enhancing code quality, consistency, and providing excellent IDE support.</p>
			</div>
		</div>
		<div class="relative card-container">
			<div class="card p-6 text-center bg-secondary text-on-secondary rounded transition-transform duration-300 hover:shadow-rose-hover hover:-translate-y-2">
				<div class="flex justify-center">
					<Library />
				</div>
				<h2 class="heading text-2xl font-semibold mt-4">Extensible</h2>
				<p class="body">Leverage a rich ecosystem of libraries and plugins to extend functionality and integrate seamlessly with existing tools and systems.</p>
			</div>
		</div>
	</section>
	
	<!-- How It Works Section -->
	<section>
		<h2 class="text-3xl font-bold text-on-primary mb-4">How NestJS Works</h2>
		<p class="text-on-primary text-lg">
			NestJS uses a modular system where each module encapsulates related components such as controllers, services, and providers. This modular architecture promotes organization and scalability. Controllers handle incoming requests and return responses to the client, while services contain business logic and handle data access. Dependency Injection, a core feature of NestJS, ensures that components can be easily managed and tested by allowing dependencies to be injected at runtime rather than hard-coded. This makes your code more modular and testable.
		</p>
	</section>

	<!-- Call-to-Action Section -->
	<section class="flex flex-col items-center justify-center text-center gap-4 bg-secondary rounded p-8 shadow hover:shadow-rose-hover">
		<h2 class="text-3xl font-bold text-on-secondary">Ready to dive in?</h2>
		<p class="text-on-secondary text-lg">
			Start building your next project with NestJS today. Comprehensive documentation and a supportive community are just a click away. Whether you're looking to build a microservice architecture, REST APIs, or GraphQL applications, NestJS has you covered with robust features and a smooth developer experience.
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
