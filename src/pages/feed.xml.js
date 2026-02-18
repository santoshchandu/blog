import rss from '@astrojs/rss';
import { getCollection } from 'astro:content';

export async function GET(context) {
  const posts = await getCollection('blog', ({ data }) => !data.draft);
  const sorted = posts.sort((a, b) => b.data.pubDate.valueOf() - a.data.pubDate.valueOf());

  return rss({
    title: "Santosh's blog — AI & Dev",
    description: 'A blog about the latest developments in AI and the developer world. No ads, no trackers, just signal.',
    site: context.site,
    items: sorted.map((post) => ({
      title: post.data.title,
      pubDate: post.data.pubDate,
      description: post.data.description,
      link: `/blog/${post.slug}/`,
      categories: post.data.tags,
    })),
    customData: `
      <language>en-us</language>
      <copyright>© ${new Date().getFullYear()} blog.santoshchandu.com</copyright>
      <managingEditor>hello@santoshchandu.com (Santosh Chandu)</managingEditor>
      <webMaster>hello@santoshchandu.com (Santosh Chandu)</webMaster>
      <ttl>60</ttl>
    `.trim(),
    stylesheet: '/rss-styles.xsl',
  });
}
