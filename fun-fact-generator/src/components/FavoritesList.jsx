export default function FavoritesList({ favorites, onRemove }) {
  if (favorites.length === 0) {
    return (
      <div className="favorites-empty">
        <p>No saved facts yet. Hit ♡ on a fact to save it here!</p>
      </div>
    );
  }

  return (
    <ul className="favorites-list">
      {favorites.map((fact) => (
        <li key={fact.id} className="favorite-item">
          <span className="fact-category">{fact.category}</span>
          <p className="favorite-text">{fact.text}</p>
          <button
            className="btn-remove"
            onClick={() => onRemove(fact.id)}
            aria-label="Remove from favorites"
          >
            ✕
          </button>
        </li>
      ))}
    </ul>
  );
}
