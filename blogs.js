const blogs = [
  {
    title: "What makes a cohort perfect?",
    img: "/img/what_makes.jpeg",
    slug: "what-makes-a-cohort-perfect",
    src: "/md/what-makes-a-cohort-perfect.md",
  },
  {
    title: "Crafting a cohesive course curriculum",
    img: "/img/crafting_a.jpeg",
    slug: "crafting-a-cohesive-course-curriculum",
  },
  {
    title: "A guide to marketing cohort-based courses",
    img: "/img/a_guide.jpeg",
    slug: "a-guide-to-marketing-cohort-based-courses",
  },
  {
    title: "Five future predictions on cohort-based learning (CBL)",
    img: "/img/five_future.jpeg",
    slug: "five-future-predictions-on-cohort-based-learning",
  },
  {
    title: "Leverage Your Personal Brand for Cohort Courses",
    img: "/img/leverage_your.jpeg",
    slug: "leverage-your-personal-brand-for-cohort-courses",
  },
  {
    title: "Challenges in creating and marketing cohort courses",
    img: "/img/challenges_in_creating.jpeg",
    slug: "challenges-in-creating-and-marketing-cohort-courses",
  },
  {
    title: "How to price your cohort-based course?",
    img: "/img/how_to_price.jpg",
    slug: "how-to-price-your-cohort-based-course",
  },
];

const getRandomThree = (arr) => {
  const random = [];
  while (random.length < 3) {
    const index = Math.floor(Math.random() * arr.length);
    if (!random.includes(arr[index])) {
      random.push(arr[index]);
    }
  }
  return random;
};

const home = {
  featured: blogs[0],
  recent: blogs.slice(1, 2),
  all: blogs.slice(2),
  random: getRandomThree(blogs.slice(2)),
};
