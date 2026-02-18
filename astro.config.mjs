import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

export default defineConfig({
  site: 'https://blog.santoshchandu.com',
  integrations: [sitemap()],
});
