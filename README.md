# Hongyu Li — Academic Homepage

A Jekyll academic homepage hosted on [GitHub Pages](https://appletea233.github.io/acad-homepage.github.io/). The compact, topic-based publication layout is inspired by [Ziyu Guo's homepage](https://ziyuguo99.github.io/) and retains the original [AcadHomepage](https://github.com/RayeRen/acad-homepage.github.io) / Minimal Mistakes foundation and license.

## Local preview

From this repository, run:

```sh
bash run_server.sh
```

Open http://127.0.0.1:4000/. The launcher uses the workspace-local Ruby/Jekyll runtime when available. On another machine, install Ruby and the locked dependencies with `bundle install` first. The preview uses an empty `baseurl`; the production setting is unchanged.

## Editing

- `_config.yml`: profile, Google Scholar, email, and deployment URL.
- `_pages/about.md`: introduction, news, education, and academic service.
- `_data/publications.json`: the 22 paper records, grouped by research topic. Includes source URLs and authorship/venue provenance, which are not rendered on the page.
- `_includes/publications.html`: compact paper rows and accessible native figure toggles.
- `_sass/_homepage.scss`: responsive layout and styling.
- `images/`: portrait, publication figures, and icons.

For each publication, use `authors` as objects with `name` and optional `mark` (`*` equal contribution, `†` project lead, `‡` corresponding author). An optional `authors_display` supports long team-authored reports. Use `summary` for a short English sentence describing the method and contribution, displayed beneath the authors. Keep its primary source in `summary_source`. Only add `pdf`, `code`, `project`, and `image` when the resource exists; record the original figure URL in `thumbnail_source`.

## Content update — 2026-10-10

Checked against [Hongyu Li's Google Scholar](https://scholar.google.com/citations?user=PccL82sAAAAJ&hl=en), the original website, official papers, proceedings, and author project pages. Added the user-supplied [OneSearch-VL release](https://arxiv.org/abs/2610.12419), dated 2026-10-08. The two Scholar entries for AIA share one arXiv ID and are represented once.

Newly listed acceptance statuses include Video-MME-Logical (Findings of EMNLP 2026), OmniAlpha (ACM MM 2026, Oral), OpenSubject (ECCV 2026), and Gen-Searcher (NeurIPS 2026). OpenSubject uses the final proceedings author list. Video-MME-Logical release news is dated June 2026, matching its June 26 arXiv release, and briefly describes visual coding for controllable video generation to support both training and benchmarking temporal-logical reasoning. OpenSubject acceptance news uses the official June conference notification month, not an independently verified individual decision day. Gen-Searcher’s September news is supported by the project lead’s dated announcement and the official NeurIPS schedule. Other dated news follows sources or the existing homepage. The CVPR 2026 aggregate count (3 Main, 1 Findings) was confirmed by the author. OneThinker release news is dated December 2025, matching its initial arXiv release. LLaVA-ST code, model, and ST-Align data/benchmark release news follows the official repository’s July 5, 2025 announcement. All news entries remain expanded. Biography, education, and service retain the existing author's information; the time-sensitive “second-year” description was removed.

Every paper includes a concise contribution summary and a figure available through “Show Figure.” The OneSearch-VL figure is the first data-engine diagram from the [official arXiv HTML](https://arxiv.org/html/2610.12419v1/pipeline-data.png); the Video-MME-Logical overview is from its [official project page](https://mrakas.github.io/video-mme-logical/). Additional figures come from official papers, repositories, or project pages, with sources recorded in the publication data. Existing paper images and portrait were retained. Conference and workshop labels use purple, including NeurIPS@NextVid 2025 Oral; technical reports use blue. No citation counts are fabricated or fetched on page load.

## GitHub Pages

The production configuration remains:

```yaml
url: "https://appletea233.github.io"
baseurl: "/acad-homepage.github.io"
```

Build with `bundle exec jekyll build`. CSS, images, and canonical links use Jekyll URL filters so they also work at the repository subpath. Deploy through the repository's existing GitHub Pages configuration after reviewing and pushing the changes.
