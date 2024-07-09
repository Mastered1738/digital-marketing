<script lang="ts">
    // No additional scripts needed for the advanced tutorial page
</script>

<svelte:head>
    <title>NestJS - Advanced</title> 
</svelte:head>
<main class="container mx-auto p-8 flex flex-col gap-8">
    <!-- Introduction Section -->
    <section id="intro" class="shadow-md p-8 mb-8 text-black bg-white rounded-lg hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2">
        <h1 class="heading text-4xl font-bold">Advanced NestJS</h1>
        <p class="body-large">
            Diving deeper into NestJS with advanced concepts.
        </p>
    </section>

    <!-- Middleware Section -->
    <section id="middleware" class="shadow-md p-8 mb-8 text-black bg-white rounded-lg hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2">
        <h2 class="heading text-2xl font-semibold">Using Middleware</h2>
        <p class="body pb-4">
            request and server response. They intercept incoming requests, allowing developers to modify or enhance the request and response objects as needed. In the NestJS framework, 
            middleware functions are implemented using classes or functions that have access to the request (req), response (res), and next middleware function, facilitating tasks such as logging,
            authentication, error handling, and more. This interception capability empowers developers to add cross-cutting concerns across different routes or endpoints, promoting code reusability
            and maintaining separation of concerns in their applications.
        </p>
        <pre class="pre bg-secondary rounded hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2" style="color: #ebdbb2;">
            <span style="color: #d3869b;">// Inside src/middleware/logger.middleware.ts</span>
            <span style="color: #fb4934;">import</span> &#123; <span style="color: #fabd2f;">Injectable</span>, <span style="color: #fabd2f;">NestMiddleware</span> &#125; <span style="color: #83a598;">from</span> '@nestjs/common';
            <span style="color: #fb4934;">import</span> &#123; <span style="color: #fabd2f;">Request</span>, <span style="color: #fabd2f;">Response</span>, <span style="color: #fabd2f;">NextFunction</span> &#125; <span style="color: #83a598;">from</span> 'express';

            <span style="color: #fb4934;">@Injectable</span>()
            <span style="color: #fb4934;">export class</span> LoggerMiddleware <span style="color: #fb4934;">implements</span> NestMiddleware &#123;
                <span style="color: #8ec07c;">use</span>(req: Request, res: Response, next: NextFunction) &#123;
                    console.log(`Request...`);
                    next();
                &#125;
            &#125;

            <span style="color: #d3869b;">// Inside src/app.module.ts</span>
            <span style="color: #fb4934;">import</span> &#123; <span style="color: #fabd2f;">MiddlewareConsumer</span>, <span style="color: #fabd2f;">Module</span>, <span style="color: #fabd2f;">NestModule</span> &#125; <span style="color: #83a598;">from</span> '@nestjs/common';
            <span style="color: #fb4934;">import</span> &#123; LoggerMiddleware &#125; <span style="color: #83a598;">from</span> './middleware/logger.middleware';

            <span style="color: #fe8019;">@Module</span>(&#123;
                imports: [],
                controllers: [],
                providers: [],
            &#125;)
            <span style="color: #fb4934;">export class</span> AppModule <span style="color: #fb4934;">implements</span> NestModule &#123;
                <span style="color: #8ec07c;">configure</span>(consumer: MiddlewareConsumer) &#123;
                    consumer
                        .apply(LoggerMiddleware)
                        .forRoutes('*');
                &#125;
            &#125;
        </pre>
    </section>

    <!-- Guards Section -->
    <section id="guards" class="shadow-md p-8 mb-8 text-black bg-white rounded-lg hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2">
        <h2 class="heading text-2xl font-semibold">Implementing Guards</h2>
        <p class="body pb-4">
            Guards in web frameworks like NestJS are specialized classes or functions designed to enforce specific conditions before allowing a request to proceed to a route handler. 
            Their primary role is to evaluate incoming requests based on predefined criteria such as authentication status, user permissions, or any custom logic. 
            By implementing guards, developers can ensure that only requests meeting certain conditions are processed further, enhancing security and controlling access within their applications. 
            This selective handling helps maintain the integrity of routes and ensures that sensitive operations or resources are accessed only by authorized users or under specified conditions.
        </p>
        <pre class="pre bg-secondary rounded hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2" style="color: #ebdbb2;">
            <span style="color: #d3869b;">// Inside src/guards/auth.guard.ts</span>
            <span style="color: #fb4934;">import</span> &#123; <span style="color: #fabd2f;">Injectable</span>, <span style="color: #fabd2f;">CanActivate</span>, <span style="color: #fabd2f;">ExecutionContext</span> &#125; <span style="color: #83a598;">from</span> '@nestjs/common';
            <span style="color: #fb4934;">import</span> &#123; <span style="color: #fabd2f;">Observable</span> &#125; <span style="color: #83a598;">from</span> 'rxjs';

            <span style="color: #fb4934;">@Injectable</span>()
            <span style="color: #fb4934;">export class</span> AuthGuard <span style="color: #fb4934;">implements</span> CanActivate &#123;
                <span style="color: #8ec07c;">canActivate</span>(context: ExecutionContext): <span style="color: #fabd2f;">boolean</span> | <span style="color: #fabd2f;">Promise</span><span style="color: #fabd2f;">boolean</span>> | Observable<span style="color: #fabd2f;">boolean</span>> &#123;
                    <span style="color: #83a598;">const</span> request = context.switchToHttp().getRequest();
                    <span style="color: #8ec07c;">return</span> validateRequest(request);
                &#125;
            &#125;

            <span style="color: #d3869b;">// Inside src/controllers/secure.controller.ts</span>
            <span style="color: #fb4934;">import</span> &#123; <span style="color: #fabd2f;">Controller</span>, <span style="color: #fabd2f;">Get</span>, <span style="color: #fabd2f;">UseGuards</span> &#125; <span style="color: #83a598;">from</span> '@nestjs/common';
            <span style="color: #fb4934;">import</span> &#123; AuthGuard &#125; <span style="color: #83a598;">from</span> '../guards/auth.guard';

            <span style="color: #fb4934;">@Controller</span>('secure')
            <span style="color: #fb4934;">export class</span> SecureController &#123;
                <span style="color: #fb4934;">@Get</span>()
                <span style="color: #fb4934;">@UseGuards</span>(AuthGuard)
                getSecure(): <span style="color: #8ec07c;">string</span> &#123;
                    <span style="color: #8ec07c;">return</span> 'This is a secure route';
                &#125;
            &#125;
        </pre>
    </section>

    <!-- Microservices Section -->
    <section id="guards" class="shadow-md p-8 mb-8 text-black bg-white rounded-lg hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2">
        <h2 class="heading text-2xl font-semibold">Microservices architecture</h2>
        <p class="body pb-4">
            To instantiate a microservice in NestJS, you utilize the createMicroservice() method provided by the NestFactory class. 
            This method allows you to set up and configure a microservice instance, which operates independently and communicates with the main application via defined transport mechanisms. 
            In the example using TCP transport:
        </p>
        <pre class="pre bg-secondary rounded hover:shadow-rose-600 hover:shadow-xl transition duration-300 ease-in-out hover:-translate-y-2" style="color: #ebdbb2;">
            <span style="color: #d3869b;">// Inside src/main.ts</span>
            <span style="color: #fb4934;">import</span> &#123; <span style="color: #fabd2f;">NestFactory</span> &#125; <span style="color: #83a598;">from</span> '@nestjs/core';
            <span style="color: #fb4934;">import</span> &#123; <span style="color: #fabd2f;">AppModule</span> &#125; <span style="color: #83a598;">from</span> './app.module';
            <span style="color: #fb4934;">import</span> &#123; <span style="color: #fabd2f;">Transport</span> &#125; <span style="color: #83a598;">from</span> '@nestjs/microservices';

            <span style="color: #fb4934;">async function</span> bootstrap() &#123;
            <span style="color: #83a598;">const</span> app = <span style="color: #8ec07c;">await</span> NestFactory.createMicroservice&lt;MicroserviceOptions&gt;(AppModule, &#123;
            transport: Transport.TCP,
                    options: &#123;
                        host: '127.0.0.1',
                        port: 8877,
                    &#125;,
                &#125;);

                <span style="color: #8ec07c;">await</span> app.listen();
            &#125;
            bootstrap();
        </pre>
    </section>

</main>

    <!-- Footer Section -->
    <footer class="bg-black py-4 text-white">
        <div class="container mx-auto text-center">
            <p>&copy; 2024 NestJS Advanced Tutorial. All rights reserved.</p>
        </div>
    </footer>
