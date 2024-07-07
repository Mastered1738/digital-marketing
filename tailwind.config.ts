import { join } from 'path'
import type { Config } from 'tailwindcss'
import forms from '@tailwindcss/forms'
import typography from '@tailwindcss/typography'
import { skeleton } from '@skeletonlabs/tw-plugin'

export default {
	darkMode: 'class',
	content: ['./src/**/*.{html,js,svelte,ts}', join(require.resolve('@skeletonlabs/skeleton'), '../**/*.{html,js,svelte,ts}')],
	theme: {
		extend: {
			boxShadow: {
			  'rose': '0 10px 15px -3px rgba(252, 165, 165, 0.4)',
			  'rose-hover': '0 20px 25px -5px rgba(252, 165, 165, 0.6)',
			},
		  },
	},
	plugins: [
		forms,
		typography,
		skeleton({
			themes: {
				preset: [
					{
						name: 'modern',
						enhancements: true,
					},
				],
			},
		}),
	],
} satisfies Config
