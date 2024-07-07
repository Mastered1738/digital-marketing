<script lang="ts">
	import '../app.postcss';

	// Highlight JS
	import hljs from 'highlight.js/lib/core';
	import 'highlight.js/styles/github-dark.css';
	import { storeHighlightJs } from '@skeletonlabs/skeleton';
	import xml from 'highlight.js/lib/languages/xml'; // for HTML
	import css from 'highlight.js/lib/languages/css';
	import javascript from 'highlight.js/lib/languages/javascript';
	import typescript from 'highlight.js/lib/languages/typescript';

	hljs.registerLanguage('xml', xml); // for HTML
	hljs.registerLanguage('css', css);
	hljs.registerLanguage('javascript', javascript);
	hljs.registerLanguage('typescript', typescript);
	storeHighlightJs.set(hljs);

	// Floating UI for Popups
	import { computePosition, autoUpdate, flip, shift, offset, arrow } from '@floating-ui/dom';
	import { storePopup } from '@skeletonlabs/skeleton';
	storePopup.set({ computePosition, autoUpdate, flip, shift, offset, arrow });
</script>

<!-- HTML with Tailwind CSS classes -->
<nav class="bg-black p-4 top-0">
    <ul class="flex gap-4 text-lg font-medium">
        <li class="transition-all duration-300 ease-in-out hover:bg-rose-600 hover:rounded-full">
            <a href="/" class="relative inline-block text-primary px-4 py-2 transition-colors duration-300 ease-in-out transform hover:scale-105">
                <span class="absolute inset-0 rounded-full transform scale-0 transition-transform duration-300 ease-in-out group-hover:scale-100"></span>
                Home
            </a>
        </li>
        <li class="transition-all duration-300 ease-in-out hover:bg-rose-600 hover:rounded-full">
            <a href="/intro" class="relative inline-block text-primary px-4 py-2 transition-colors duration-300 ease-in-out transform hover:scale-105">
                <span class="absolute inset-0 rounded-full transform scale-0 transition-transform duration-300 ease-in-out group-hover:scale-100"></span>
                Introduction
            </a>
        </li>
        <li class="transition-all duration-300 ease-in-out hover:bg-rose-600 hover:rounded-full">
            <a href="/basics" class="relative inline-block text-primary px-4 py-2 transition-colors duration-300 ease-in-out transform hover:scale-105">
                <span class="absolute inset-0 rounded-full transform scale-0 transition-transform duration-300 ease-in-out group-hover:scale-100"></span>
                Basic Example
            </a>
        </li>
        <li class="transition-all duration-300 ease-in-out hover:bg-rose-600 hover:rounded-full">
            <a href="/advanced" class="relative inline-block text-primary px-4 py-2 transition-colors duration-300 ease-in-out transform hover:scale-105">
                <span class="absolute inset-0 rounded-full transform scale-0 transition-transform duration-300 ease-in-out group-hover:scale-100"></span>
                Advanced Topics
            </a>
        </li>
    </ul>
</nav>



<slot />
