export default function CategoryFilter({ categories, current, onChange }) {
  return (
    <div className="category-filter">
      {categories.map((cat) => (
        <button
          key={cat}
          className={`category-btn${current === cat ? ' active' : ''}`}
          onClick={() => onChange(cat)}
        >
          {cat === 'all' ? '✨ All' : categoryLabel(cat)}
        </button>
      ))}
    </div>
  );
}

function categoryLabel(cat) {
  const map = {
    science: '🔬 Science',
    history: '📜 History',
    animals: '🐾 Animals',
    space: '🚀 Space',
    tech: '💻 Tech',
    weird: '🤪 Weird',
  };
  return map[cat] ?? cat;
}
