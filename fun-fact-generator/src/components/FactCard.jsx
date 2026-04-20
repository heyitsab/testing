export default function FactCard({ fact, isFavorite, onFavorite, onNext, isAnimating }) {
  if (!fact) return null;

  return (
    <div className="fact-card-wrapper">
      <div className={`fact-card${isAnimating ? ' fade-out' : ' fade-in'}`}>
        <span className="fact-category">{fact.category}</span>
        <p className="fact-text">{fact.text}</p>

        <div className="fact-actions">
          <button
            className={`btn-icon${isFavorite ? ' favorited' : ''}`}
            onClick={() => onFavorite(fact)}
            title={isFavorite ? 'Remove from favorites' : 'Save to favorites'}
            aria-label={isFavorite ? 'Remove from favorites' : 'Save to favorites'}
          >
            {isFavorite ? '♥' : '♡'}
          </button>
        </div>
      </div>

      <button className="btn-primary" onClick={onNext}>
        Get Another Fact →
      </button>
    </div>
  );
}
